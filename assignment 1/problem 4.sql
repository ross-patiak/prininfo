/*Bars which are frequented by John or Rebecca but not by both of them*/

USE BarBeerDrinker;

SELECT DISTINCT bar
FROM frequents f1
WHERE (f1.drinker='John' AND NOT(f1.drinker='Rebecca')) OR (f1.drinker='Rebecca' AND NOT(f1.drinker='John'));
