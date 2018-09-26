/*Bars which serve no beer(s) which Joe likes  (you can use one of the outer joins if you want)*/

USE BarBeerDrinker;

SELECT DISTINCT t1.bar
FROM sells t1
WHERE t1.bar NOT IN(SELECT s1.bar FROM sells s1 INNER JOIN likes l1 ON (l1.drinker='Joe' AND l1.beer=s1.beer));