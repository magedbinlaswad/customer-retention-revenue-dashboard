/*
Monthly Revenue Growth using Window Function
*/

WITH MonthlyRevenue AS (
    SELECT 
        YEAR(Invoice_Date) AS Year,
        MONTH(Invoice_Date) AS Month,
        SUM(Revenue) AS Monthly_Revenue
    FROM retail_sales
    GROUP BY 
        YEAR(Invoice_Date),
        MONTH(Invoice_Date)
)

SELECT 
    Year,
    Month,
    Monthly_Revenue,
    
    LAG(Monthly_Revenue) OVER (ORDER BY Year, Month) AS Previous_Month_Revenue,
    
    (Monthly_Revenue - LAG(Monthly_Revenue) OVER (ORDER BY Year, Month)) 
    AS Revenue_Change

FROM MonthlyRevenue
ORDER BY Year, Month;
