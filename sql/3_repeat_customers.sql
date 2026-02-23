/*
Repeat Customers (More than 1 Order)
*/

SELECT 
    Customer_ID,
    COUNT(DISTINCT Invoice_ID) AS Order_Count
FROM retail_sales
GROUP BY Customer_ID
HAVING COUNT(DISTINCT Invoice_ID) > 1
ORDER BY Order_Count DESC;
