#!/usr/bin/perl -w

# This file is part of Clabbers
# (c) 2005, Martin A. Brooks <martin@hinterlands.org>
#
# Clabbers is free software; you can redistribute it and/or modify it under the
# terms of the GNU General Public License as published by the Free Software
# Foundation; either version 2 of the License, or (at your option) any later
# version.
#
# Clabbers is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Foobar; if not, write to the Free Software Foundation, Inc., 51
# Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

use strict;
use DBI;
$| = 1;

my $tileset = "aha_";
if ( $ARGV[0] ) {
    $tileset = $ARGV[0];
}
my $use_c = 1;
if ( $ARGV[1] ) {
    $use_c = 0;
} else {
    $ARGV[1] = "";
}

my $contains = $ARGV[1];

if ( index( '%', $contains ) == -1 ) {
    $contains = "\%$contains\%";
}

my $database = "DBI:Pg:dbname=sowpods";
my $dbh      = DBI->connect("$database") or die $DBI::errstr;

sub GenerateQuery {
    my $query   = "";
    my %tileset = ();
    my @tileset = sort split / */, $tileset;
    $tileset{"_"} = 0;
    for my $tile (@tileset) {
        $tileset{$tile}++;
    }

    if ( $tileset{"_"} ) {
        $query = "SELECT words.word FROM words";
        for my $tile ( keys %tileset ) {
            unless ( $tile eq "_" ) {
                $query .= " LEFT JOIN $tile ON $tile.wordid=words.uid AND $tile.freq<=" . ( $tileset{$tile} + $tileset{"_"} );
            }
        }
        if ( $tileset{"_"} ) {
            $query .= " WHERE words.size-(";
            for my $tile ( keys %tileset ) {
                unless ( $tile eq "_" ) {
                    if ($use_c) {
                        $query .= "(CASE WHEN $tile.freq>" . $tileset{$tile} . " THEN " . $tileset{$tile} . " ELSE COALESCE($tile.freq,0) END) + ";
                    } else {
                        $query .= "(CASE WHEN $tile.freq>" . $tileset{$tile} . " THEN " . $tileset{$tile} . " WHEN $tile.freq IS NULL THEN 0 ELSE $tile.freq END) + ";
                    }
                }
            }
            $query .= "0)<=" . $tileset{"_"};
        } else {
            $query .= " WHERE words.size-(";
            for my $tile ( keys %tileset ) {
                unless ( $tile eq "_" ) {
                    $query .= "COALESCE($tile.freq,0)+";
                }
            }
            $query .= "0)=0";
        }
    } else {
        my $m        = ( 2**( $#tileset + 1 ) );
        my %possible = ();
        for ( my $i = 1 ; $i < $m ; ++$i ) {
            my @poss = ();
            for ( my $x = 0 ; $x < length($tileset) ; ++$x ) {
                if ( ( 2**$x ) & $i ) {
                    push @poss, $tileset[$x];
                }
            }
            $possible{ "'" . join( '', sort @poss ) . "'" } = 1;
        }

        $query = "SELECT words.word FROM words WHERE words.hash IN (" . join( ",", keys %possible ) . ")";
    }
    if ( $contains ne "" ) {
        $query .= "AND words.word like \'$contains\'";
    }
    return $query;
}

my $query = GenerateQuery;
my $sth   = $dbh->prepare("$query");
$sth->execute;

my %words = ();

while ( my @row = $sth->fetchrow_array ) {
    my ($word) = @row;

    #print "$word\n";
    my $len = length($word);
    $words{$len}{$word} = defined;
}

foreach my $len ( sort keys %words ) {
    next if $len == 0;
    print "\n$len";
    my %temp  = ();
    my $count = 0;
    foreach my $tmp ( keys %{ $words{$len} } ) {
        $count++;
        $temp{$tmp} = defined;

    }
    print " ($count) : ";
    foreach my $word ( sort keys %temp ) {
        print "$word ";
    }
    print "\n";

}

print "\n";

$dbh->disconnect;
