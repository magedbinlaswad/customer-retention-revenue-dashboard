/*
High Value Customers using CTE
*/

WITH CustomerSpending AS (
    SELECT 
        Customer_ID,
        SUM(Revenue) AS Total_Spent
    FROM retail_sales
    GROUP BY Customer_ID
)

SELECT *
FROM CustomerSpending
WHERE Total_Spent > 5000
ORDER BY Total_Spent DESC;
