USE BarBeerDrinker;

/*Beers which are liked by at most one drinker who frequents Cabana*/

/*beers liked by more than one drinker that frequents cabana*/

/*SELECT DISTINCT l3.beer
FROM likes l3 
WHERE l3.beer NOT IN
    (SELECT DISTINCT l2.beer
        FROM likes l2, frequents f2,
            (SELECT DISTINCT l1.beer, f1.drinker 
                FROM likes l1, frequents f1 
             WHERE f1.drinker=l1.drinker AND f1.bar='Cabana') t1 /*beers liked by cabana drinkers
         WHERE (f2.bar='Cabana' AND f2.drinker<>t1.drinker AND t1.beer=l2.beer)) /*beers liked by more than one Cabana drinker;*/

SELECT l1.beer
FROM likes l1
WHERE l1.beer NOT IN( /*beers liked by more than one nigga who frequent cabana*/
    SELECT t1.beer
    FROM (SELECT drinker FROM frequents WHERE bar='Cabana') t1 INNER JOIN likes l2 ON l2.drinker=t1.drinker, 
    (SELECT drinker FROM frequents WHERE bar='Cabana') t2 INNER JOIN likes l3 ON l3.drinker=t2.drinker
    WHERE t1.drinker<>t2.drinker AND t1.beer=t2.beer);