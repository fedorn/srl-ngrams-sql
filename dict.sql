SELECT dep_grams.n_gram_1,
COUNT(CASE WHEN mn.gram LIKE '% nomn%' THEN 1 ELSE NULL END) AS nomn,
COUNT(CASE WHEN mn.gram LIKE '% gent%' THEN 1 ELSE NULL END) AS gent,
COUNT(CASE WHEN mn.gram LIKE '% datv%' THEN 1 ELSE NULL END) AS datv,
COUNT(CASE WHEN mn.gram LIKE '% accs%' THEN 1 ELSE NULL END) AS accs,
COUNT(CASE WHEN mn.gram LIKE '% ablt%' THEN 1 ELSE NULL END) AS ablt,
COUNT(CASE WHEN mn.gram LIKE '% loct%' THEN 1 ELSE NULL END) AS loct
INTO verb_noun_cases
FROM dep_grams
INNER JOIN morph_joined mv ON dep_grams.n_gram_1=mv.n_gram_1
INNER JOIN morph_joined mn ON dep_grams.n_gram_2=mn.n_gram_1
WHERE mv.pos='VERB' AND mn.pos='NOUN'
GROUP BY dep_grams.n_gram_1;

SELECT dep_grams.n_gram_1,
SUM(CASE WHEN mn.gram LIKE '% nomn%' THEN dep_grams.match_count ELSE 0 END) AS nomn,
SUM(CASE WHEN mn.gram LIKE '% gent%' THEN dep_grams.match_count ELSE 0 END) AS gent,
SUM(CASE WHEN mn.gram LIKE '% datv%' THEN dep_grams.match_count ELSE 0 END) AS datv,
SUM(CASE WHEN mn.gram LIKE '% accs%' THEN dep_grams.match_count ELSE 0 END) AS accs,
SUM(CASE WHEN mn.gram LIKE '% ablt%' THEN dep_grams.match_count ELSE 0 END) AS ablt,
SUM(CASE WHEN mn.gram LIKE '% loct%' THEN dep_grams.match_count ELSE 0 END) AS loct
INTO verb_noun_cases_sum
FROM dep_grams
INNER JOIN morph_joined mv ON dep_grams.n_gram_1=mv.n_gram_1
INNER JOIN morph_joined mn ON dep_grams.n_gram_2=mn.n_gram_1
WHERE mv.pos='VERB' AND mn.pos='NOUN'
GROUP BY dep_grams.n_gram_1;