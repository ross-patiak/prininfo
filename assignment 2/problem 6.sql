/*Pairs of drinkers who frequent the same bar (and possibly other bars)*/
USE BarBeerDrinker;

SELECT least(f1.drinker, f2.drinker) AS drinker1, greatest(f1.drinker, f2.drinker) AS drinker2
FROM frequents f1, frequents f2
WHERE f1.bar=f2.bar AND f1.drinker<>f2.drinker; 