 WITH fullmoon_reviews AS ( 
    SELECT * FROM AIRBNB.DEV.FULL_MOON_REVIEWS
) 
SELECT 
    is_full_moon, 
    review_sentiment, 
    COUNT(*) as reviews
FROM
fullmoon_reviews
GROUP BY
is_full_moon,
review_sentiment
ORDER BY
is_full_moon,
review_sentiment