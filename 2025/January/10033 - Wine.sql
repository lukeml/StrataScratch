# Wine Variety Revenues - Wine Magazine - Medium - ID 10033

/*

Find the sum of prices of for region and variety combination. Output the region, variety, and total price sum.

Take into calculation both region_1 and region_2. Remove the duplicated rows where  region, price and variety are exactly the same.

Ignore rows with prices or regions having NULL value.

*/
SELECT region, 
    variety, 
    SUM(price) AS total_price
FROM( 
    SELECT region_1 AS region,
        variety,
        price
    FROM winemag_p1
    UNION
    SELECT region_2 AS region,
        variety,
        price
    FROM winemag_p1
) AS compbined_regions

WHERE region IS NOT NULL
    AND price IS NOT NULL
GROUP BY region, variety


