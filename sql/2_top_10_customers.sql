/*
Top 10 Customers by Total Spending
*/

SELECT TOP 10
    Customer_ID,
    SUM(Revenue) AS Total_Spent
FROM retail_sales
GROUP BY Customer_ID
ORDER BY Total_Spent DESC;
