/*Drinkers who frequent bars which sell some beer that they like*/

USE BarBeerDrinker;

SELECT DISTINCT t1.drinker
FROM (SELECT drinker,bar FROM (likes INNER JOIN sells ON likes.beer=sells.beer)) t1 
INNER JOIN frequents f ON t1.drinker=f.drinker
WHERE t1.bar=f.bar; 