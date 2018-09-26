/*Pairs of drinkers who frequent the same bar (and possibly other bars)*/
USE BarBeerDrinker;

SELECT f1.drinker, f2.drinker
FROM frequents f1, frequents f2