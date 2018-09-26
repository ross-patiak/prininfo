/*Drinkers who frequent no bars that Tom frequents*/

USE BarBeerDrinker;

SELECT DISTINCT f2.drinker 
FROM frequents f2
WHERE f2.bar NOT IN(SELECT DISTINCT f1.bar FROM frequents f1 WHERE f1.drinker='Tom');
