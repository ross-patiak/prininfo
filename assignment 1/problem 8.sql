/*Bars with names containing "The"*/
USE BarBeerDrinker;

SELECT b.name
FROM bars b
WHERE b.name LIKE 'The%';