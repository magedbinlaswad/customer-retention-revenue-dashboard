/*
Monthly Revenue Analysis
*/

SELECT 
    YEAR(Invoice_Date) AS Year,
    MONTH(Invoice_Date) AS Month,
    SUM(Revenue) AS Monthly_Revenue
FROM retail_sales
GROUP BY 
    YEAR(Invoice_Date),
    MONTH(Invoice_Date)
ORDER BY 
    Year, Month;
