-- SELECT * 
-- FROM {{ ref('dim_listings_cleansed') }} l  
-- INNER JOIN {{ ref('fct_reviews') }} r  
-- ON l.listing_id = r.listing_id  
-- WHERE l.created_at >= r.review_date

-- SELECT
--     *
-- FROM
--     {{ ref('dim_listings_cleansed')}} AS l
-- INNER JOIN
--     {{ ref('fct_reviews')}} AS r
-- USING (listing_id) 
-- WHERE
--     r.review_date <= l.created_at

-- SELECT
--  *
-- FROM {{ ref('dim_listings_cleansed') }} l
-- INNER JOIN {{ ref('fct_reviews') }} r on
-- r.listing_id = l.listing_id
-- WHERE l.created_at >= r.review_date 

SELECT * FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
on  (l.listing_id=r.listing_id)
WHERE l.created_at >= r.review_date