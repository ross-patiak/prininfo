USE DiscoveryChallenge;

/*For each restaurant, how many 3-star reviews did each get?  List these restaurants in tripadvisor rank order from top to bottom.*/

SELECT RESTAURANT, RANK, COUNT(*) AS number_of_3_starred_reviews 
FROM TRIPADVISOR 
WHERE REVIEW_STARS = 3 
GROUP BY RESTAURANT
ORDER BY RANK ASC;