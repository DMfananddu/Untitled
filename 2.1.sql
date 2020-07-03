use teamidea;
-- CREATE VIEW view_average_price
-- AS
-- 	SELECT auto.brand_id, brand.brand_name, auto.average_price
-- 	FROM brand
-- 	INNER JOIN (
-- 		SELECT brand_id, avg(price) as average_price
-- 		FROM auto
-- 		GROUP BY brand_id
-- 		) as auto
-- 	ON auto.brand_id = brand.idbrand;

SELECT brand_id, brand_name, average_price FROM view_average_price WHERE average_price = (SELECT MAX(average_price)
FROM view_average_price);
