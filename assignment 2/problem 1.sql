USE BarBeerDrinker;

SELECT DISTINCT t2.name 
FROM drinkers t2
WHERE t2.name 
    NOT IN(SELECT drinkers.name FROM drinkers INNER JOIN likes ON drinkers.name=likes.drinker);