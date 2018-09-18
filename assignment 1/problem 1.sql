USE BarBeerDrinker;

SELECT beer 
FROM sells
WHERE bar = 'Gecko Grill' AND NOT(beer='Hefeweizen');