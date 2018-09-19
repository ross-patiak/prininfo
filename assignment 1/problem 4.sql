/*Bars which are frequented by John or Rebecca but not by both of them*/

USE BarBeerDrinker;

SELECT f1.bar
FROM frequents f1, 
    (SELECT bar from frequents where frequents.drinker='John') t1 INNER JOIN 
    frequents f ON f.drinker='Rebecca' AND f.bar=t1.bar
WHERE 
    (f1.drinker='John' AND NOT(f1.bar=t1.bar)) OR (f1.drinker='Rebecca') 
    AND NOT(f1.bar=t1.bar); 