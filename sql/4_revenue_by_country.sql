/*
Revenue by Country
*/

SELECT 
    Country,
    SUM(Revenue) AS Total_Revenue
FROM retail_sales
GROUP BY Country
ORDER BY Total_Revenue DESC;
