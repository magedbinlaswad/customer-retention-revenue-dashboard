/*
Monthly Order Volume
*/

SELECT 
    YEAR(Invoice_Date) AS Year,
    MONTH(Invoice_Date) AS Month,
    COUNT(DISTINCT Invoice_ID) AS Total_Orders
FROM retail_sales
GROUP BY 
    YEAR(Invoice_Date),
    MONTH(Invoice_Date)
ORDER BY Year, Month;
