/*
Customer Revenue In March

Interview Question Date: July 2018
Amazon
Meta
Medium 

ID 9782

Data Engineer
Data Scientist
BI Analyst
Data Analyst
ML Engineer
Software Engineer

Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.

Output the revenue along with the customer id and sort the results based on the revenue in descending order.
Table: orders

*/

SELECT cust_id, SUM(total_order_cost) as total_cost
FROM orders
WHERE order_date BETWEEN '2019-03-01' AND '2019-03-31'
GROUP BY cust_id
