/*

Total Wine Revenue

Interview Question Date: February 2020
Wine Magazine
MediumID 10030
Data Engineer
Data Scientist
BI Analyst
Data Analyst
ML Engineer

You have a dataset of wines. Find the total revenue made by each winery and variety that always have at least 90 points. Meaning that in each row for the winery, variety pair number of points should be at least 90 in order for that pair to be considered in the calculation.

Output the winery and variety along with the corresponding total revenue. Order records by the winery in ascending order and total revenue in descending order.

*/

-- Below is incorrect because we are not told to eliminate ALL group pairings of winery/variety, just the ones less than 90

select winery, variety, SUM(price) 
from winemag_p1
WHERE points > 90
GROUP BY winery, variety

-- Below is the correct answer
SELECT winery,
       variety,
       SUM(price) AS total_revenue
FROM winemag_p1
GROUP BY winery,
         variety
HAVING MIN(points) >= 90

