/*Bars which serve all beers that Cabana serves and possibly more*/

USE BarBeerDrinker;

SELECT s2.bar
FROM  sells s2
WHERE s2.bar<>'Cabana' AND s2.beer IN(SELECT beer FROM sells s1 WHERE s1.bar='Cabana');