USE BarBeerDrinker;

SELECT DISTINCT l1.drinker
FROM likes l1 INNER JOIN (SELECT beer FROM likes WHERE (drinker = 'John')) l2
ON l1.beer = l2.beer
WHERE NOT(l1.drinker = 'John');