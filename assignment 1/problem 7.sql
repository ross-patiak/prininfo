/*Drinkers who like both Hefeweizen and Killian's*/

USE BarBeerDrinker;

SELECT DISTINCT t1.drinker
FROM (SELECT drinker FROM likes WHERE beer='Bud') t1, (SELECT drinker FROM likes WHERE beer='Hefeweizen') t2
WHERE t1.drinker=t2.drinker;