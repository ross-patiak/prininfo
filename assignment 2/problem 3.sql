USE BarBeerDrinker;

/*beers liked by more than one drinker that frequents cabana*/

SELECT DISTINCT l3.beer
FROM likes l3 
    
WHERE l3.beer NOT IN(SELECT DISTINCT l2.beer
        FROM likes l2, frequents f2,
            (SELECT DISTINCT l1.beer, f1.drinker 
                FROM likes l1, frequents f1 
             WHERE f1.drinker=l1.drinker AND f1.bar='Cabana') t1 /*beers liked by cabana drinkers*/
         WHERE (f2.bar='Cabana' AND f2.drinker<>t1.drinker AND t1.beer=l2.beer)) /*beers liked by more than one Cabana drinker*/;