/*Bars which serve some beers which John or Rebecca like and which are cheaper than $5*/

USE BarBeerDrinker;

SELECT DISTINCT bar
FROM (SELECT drinker, bar, price FROM sells INNER JOIN likes ON sells.beer=likes.beer AND sells.price < 5) f1
WHERE (f1.drinker='John' AND NOT(f1.drinker='Rebecca')) OR (f1.drinker='Rebecca' AND NOT(f1.drinker='John'));