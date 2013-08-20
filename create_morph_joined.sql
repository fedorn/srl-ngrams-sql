SELECT uni_grams.n_gram_1, uni_morph.pos, uni_morph.lemma, uni_morph.gram
INTO morph_joined
FROM uni_grams
INNER JOIN uni_morph
ON uni_grams.id=uni_morph.uni_id;

CREATE INDEX ON morph_joined (n_gram_1);
