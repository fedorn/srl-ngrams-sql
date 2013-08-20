SELECT COUNT(*) FROM dep_grams
INNER JOIN morph_joined m1 ON dep_grams.n_gram_1=m1.n_gram_1
INNER JOIN morph_joined m2 ON dep_grams.n_gram_2=m2.n_gram_1
WHERE m1.pos='VERB' AND m2.pos='INFN';

SELECT COUNT(*) FROM tri_grams
INNER JOIN morph_joined m1 ON tri_grams.n_gram_1=m1.n_gram_1
INNER JOIN morph_joined m2 ON tri_grams.n_gram_2=m2.n_gram_1
INNER JOIN morph_joined m3 ON tri_grams.n_gram_3=m3.n_gram_1
WHERE m1.pos='VERB' AND m2.pos='INFN' AND m3.pos='PREP';

SELECT COUNT(*) FROM dep_grams
INNER JOIN morph_joined m1 ON dep_grams.n_gram_1=m1.n_gram_1
INNER JOIN morph_joined m2 ON dep_grams.n_gram_2=m2.n_gram_1
WHERE m1.pos='VERB' AND m2.pos='NOUN';

SELECT COUNT(*) FROM tri_grams
INNER JOIN morph_joined m1 ON tri_grams.n_gram_1=m1.n_gram_1
INNER JOIN morph_joined m2 ON tri_grams.n_gram_2=m2.n_gram_1
INNER JOIN morph_joined m3 ON tri_grams.n_gram_3=m3.n_gram_1
WHERE m1.pos='VERB' AND m2.pos='PREP' AND m3.pos='NOUN';

SELECT COUNT(*) FROM tri_grams
INNER JOIN morph_joined m1 ON tri_grams.n_gram_1=m1.n_gram_1
INNER JOIN morph_joined m2 ON tri_grams.n_gram_2=m2.n_gram_1
INNER JOIN morph_joined m3 ON tri_grams.n_gram_3=m3.n_gram_1
WHERE m1.pos='INFN' AND m2.pos='PREP' AND m3.pos='NOUN';

SELECT COUNT(*) FROM dep_grams
INNER JOIN morph_joined m1 ON dep_grams.n_gram_1=m1.n_gram_1
INNER JOIN morph_joined m2 ON dep_grams.n_gram_2=m2.n_gram_1
WHERE m1.pos='INFN' AND m2.pos='NOUN';
