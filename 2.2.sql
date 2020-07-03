USE teamidea;

SELECT brand.brand_country, sum(auto.auto_count) as auto_count
FROM brand
INNER JOIN (
	SELECT brand_id, count(*) as auto_count
    FROM auto
    GROUP BY brand_id
    ) as auto
ON auto.brand_id = brand.idbrand and brand.brand_country = "Германия";
