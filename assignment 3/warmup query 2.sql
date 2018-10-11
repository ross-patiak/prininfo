USE DiscoveryChallenge;

/*Find average score of top 10 restaurants 
and compare it with average score of the bottom 10 restaurants 
according to trip advisor ranking*/

SELECT AVG(T1.SCORE) AS AVG_OF_TOP10, AVG(T2.SCORE) AS AVG_OF_BOTTOM10
FROM (SELECT SCORE FROM TRIPADVISOR GROUP BY RESTAURANT ORDER BY RANK DESC LIMIT 10) T1,
(SELECT SCORE FROM TRIPADVISOR GROUP BY RESTAURANT ORDER BY RANK ASC LIMIT 10) T2;