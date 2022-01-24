-- Clabbers schema

BEGIN;

SET search_path = public, pg_catalog;
CREATE TABLE words (
    uid serial NOT NULL PRIMARY KEY, 
    word character varying NOT NULL UNIQUE,
    hash character varying NOT NULL,
    size integer NOT NULL
);

CREATE TABLE a (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE b (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE c (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE d (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE e (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE f (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE g (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE h (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE i (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE j (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE k (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE l (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE m (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE n (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE o (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE p (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE q (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE r (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE s (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE t (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE u (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE v (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE w (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE x (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE y (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE TABLE z (
    uid serial NOT NULL,
    wordid bigint NOT NULL REFERENCES words (uid) ON DELETE CASCADE,
    length integer NOT NULL,
    freq integer NOT NULL
);

CREATE INDEX idx_words_word ON words USING btree (word);
CREATE INDEX idx_words_hash ON words USING btree (hash);
CREATE INDEX idx_words_uid ON words USING btree (uid);

CREATE INDEX idx_a_wordid ON a USING btree (wordid);
CREATE INDEX idx_a_uid ON a USING btree (uid);
CREATE INDEX idx_b_wordid ON b USING btree (wordid);
CREATE INDEX idx_b_uid ON b USING btree (uid);
CREATE INDEX idx_c_wordid ON c USING btree (wordid);
CREATE INDEX idx_c_uid ON c USING btree (uid);
CREATE INDEX idx_d_wordid ON d USING btree (wordid);
CREATE INDEX idx_d_uid ON d USING btree (uid);
CREATE INDEX idx_e_wordid ON e USING btree (wordid);
CREATE INDEX idx_e_uid ON e USING btree (uid);
CREATE INDEX idx_f_wordid ON f USING btree (wordid);
CREATE INDEX idx_f_uid ON f USING btree (uid);
CREATE INDEX idx_g_wordid ON g USING btree (wordid);
CREATE INDEX idx_g_uid ON g USING btree (uid);
CREATE INDEX idx_h_wordid ON h USING btree (wordid);
CREATE INDEX idx_h_uid ON h USING btree (uid);
CREATE INDEX idx_i_wordid ON i USING btree (wordid);
CREATE INDEX idx_i_uid ON i USING btree (uid);
CREATE INDEX idx_j_wordid ON j USING btree (wordid);
CREATE INDEX idx_j_uid ON j USING btree (uid);
CREATE INDEX idx_k_wordid ON k USING btree (wordid);
CREATE INDEX idx_k_uid ON k USING btree (uid);
CREATE INDEX idx_l_wordid ON l USING btree (wordid);
CREATE INDEX idx_l_uid ON l USING btree (uid);
CREATE INDEX idx_m_wordid ON m USING btree (wordid);
CREATE INDEX idx_m_uid ON m USING btree (uid);
CREATE INDEX idx_n_wordid ON n USING btree (wordid);
CREATE INDEX idx_n_uid ON n USING btree (uid);
CREATE INDEX idx_o_wordid ON o USING btree (wordid);
CREATE INDEX idx_o_uid ON o USING btree (uid);
CREATE INDEX idx_p_wordid ON p USING btree (wordid);
CREATE INDEX idx_p_uid ON p USING btree (uid);
CREATE INDEX idx_q_wordid ON q USING btree (wordid);
CREATE INDEX idx_q_uid ON q USING btree (uid);
CREATE INDEX idx_r_wordid ON r USING btree (wordid);
CREATE INDEX idx_r_uid ON r USING btree (uid);
CREATE INDEX idx_s_wordid ON s USING btree (wordid);
CREATE INDEX idx_s_uid ON s USING btree (uid);
CREATE INDEX idx_t_wordid ON t USING btree (wordid);
CREATE INDEX idx_t_uid ON t USING btree (uid);
CREATE INDEX idx_u_wordid ON u USING btree (wordid);
CREATE INDEX idx_u_uid ON u USING btree (uid);
CREATE INDEX idx_v_wordid ON v USING btree (wordid);
CREATE INDEX idx_v_uid ON v USING btree (uid);
CREATE INDEX idx_w_wordid ON w USING btree (wordid);
CREATE INDEX idx_w_uid ON w USING btree (uid);
CREATE INDEX idx_x_wordid ON x USING btree (wordid);
CREATE INDEX idx_x_uid ON x USING btree (uid);
CREATE INDEX idx_y_wordid ON y USING btree (wordid);
CREATE INDEX idx_y_uid ON y USING btree (uid);
CREATE INDEX idx_z_wordid ON z USING btree (wordid);
CREATE INDEX idx_z_uid ON z USING btree (uid);

CREATE FUNCTION new_word (varchar) RETURNS INTEGER AS $$
	my $word=shift;
        my %letters=();
        my %wordhash=();
        my $sorted="";
	my $query="";

        for (my $a=0; $a<length($word); $a++){
                my $letter=substr($word,$a,1);
                $letters{$letter}++;
                $wordhash{$letter}++;
        }
        foreach my $letter (sort keys %wordhash){
                my $rep=$wordhash{$letter};
                my $tmp=$letter x $rep;
                $sorted=$sorted . $tmp;
        }

        $query="INSERT INTO words (word,hash,size) values (\'$word\',\'$sorted\',".length($word).")";
	my $rv = spi_exec_query($query);
	$query="SELECT uid FROM words WHERE word=\'$word\'";
	$rv = spi_exec_query($query);
	my $uid = $rv->{rows}[0]->{uid};

	my $len=length($word);

        foreach my $letter (sort keys %letters){
                my $count=$letters{$letter};
                my $query="INSERT INTO $letter (wordid,length,freq) VALUES ($uid,$len,$count)";
		my $rv = spi_exec_query($query);
        }
	return $result;
$$ LANGUAGE plperl;

COMMIT;
