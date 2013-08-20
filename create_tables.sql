CREATE TABLE dep_grams (
	id INT PRIMARY KEY,
	n_gram_1 CHAR(64),
	n_gram_2 CHAR(64),
	match_count INT
);

CREATE TABLE bi_grams (
	id INT PRIMARY KEY,
	n_gram_1 CHAR(64),
	n_gram_2 CHAR(64),
	match_count INT
);

CREATE TABLE tri_grams (
	id INT PRIMARY KEY,
	n_gram_1 CHAR(64),
	n_gram_2 CHAR(64),
	n_gram_3 CHAR(64),
	match_count INT
);

CREATE TABLE for_grams (
	id INT PRIMARY KEY,
	n_gram_1 CHAR(64),
	n_gram_2 CHAR(64),
	n_gram_3 CHAR(64),
	n_gram_4 CHAR(64),
	match_count INT
);

CREATE TABLE fiv_grams (
	id INT PRIMARY KEY,
	n_gram_1 CHAR(64),
	n_gram_2 CHAR(64),
	n_gram_3 CHAR(64),
	n_gram_4 CHAR(64),
	n_gram_5 CHAR(64),
	match_count INT
);

CREATE TABLE uni_grams (
	id INT PRIMARY KEY,
	n_gram_1 CHAR(64),
	match_count INT
);

CREATE TABLE uni_morph (
	id INT PRIMARY KEY,
	uni_id INT,
	pos CHAR(4),
	lemma CHAR(64),
	gram CHAR(70)
);

CREATE TABLE ambig_unigram (
	id INT PRIMARY KEY,
	ambig_uni_id INT,
	ambig_count INT
);