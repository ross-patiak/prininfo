USE DiscoveryChallenge;

/*Do people who review more restaurants as opposed to anything else more likely to rate restaurants higher? 
    If so, are their reviews deemed more helpful?*/

SELECT USER_NAME, AVG(REVIEW_STARS) AS AVG_REVIEW, USER_RESTAURANT_REVIEWS/USER_REVIEWS AS RR_PERCENTAGE, USER_HELPFUL_VOTES, USER_RESTAURANT_REVIEWS, USER_REVIEWS, COUNT(*) AS NUM_OF_REVIEWED_IN_DB
FROM TRIPADVISOR
WHERE USER_REVIEWS > 10
GROUP BY USER_NAME
ORDER BY AVG_REVIEW DESC; 