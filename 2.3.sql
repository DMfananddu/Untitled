USE teamidea;

-- SELECT sum(auto.auto_count) as auto_count, brand.brand_country
-- FROM brand
-- INNER JOIN (
-- --     GROUP BY brand_id
--     ) as auto
-- ON auto.brand_id = brand.idbrand and brand.brand_country = "Германия";

SELECT brand_id, price, row_number() over(PARTITION BY price)
ORDER BY price DESC
FROM auto;