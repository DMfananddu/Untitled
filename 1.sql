USE teamidea;

SELECT auto.brand_id, brand.brand_name, auto.auto_count, auto.sum_price 
FROM brand
INNER JOIN (
	SELECT brand_id, count(*) as auto_count, sum(price) as sum_price
    FROM auto
    GROUP BY brand_id
    ) as auto
ON auto.brand_id = brand.idbrand;
