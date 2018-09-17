/*Pairs of drinkers and bars such that 
a drinker frequents the bar and the bar
 serves at least one beer which the drinker likes*/
USE BarBeerDrinker;

SELECT DISTINCT t1.drinker, t1.bar
FROM (SELECT DISTINCT drinker, bar FROM likes INNER JOIN sells ON likes.beer = sells.beer) t1 
INNER JOIN frequents t2 ON (t1.bar = t2.bar AND t1.drinker = t2.drinker);