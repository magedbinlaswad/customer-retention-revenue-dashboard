/*
Customer Lifetime Value (CLV)
*/

SELECT 
    Customer_ID,
    SUM(Revenue) AS Lifetime_Value
FROM retail_sales
GROUP BY Customer_ID
ORDER BY Lifetime_Value DESC;
