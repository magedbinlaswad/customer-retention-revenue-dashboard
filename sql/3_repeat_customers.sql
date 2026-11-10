/* Repeat purchasing within the available observation period.
   Result 1: customers with more than one distinct non-null invoice.
   Result 2: repeat-customer numerator, denominator, and percentage.
   Apply identical date/cancellation filters to both result sets if needed.
   This is not cohort retention or a churn estimate. */

SELECT Customer_ID, COUNT(DISTINCT Invoice_ID) AS Order_Count
FROM retail_sales
WHERE Customer_ID IS NOT NULL AND Invoice_ID IS NOT NULL
GROUP BY Customer_ID
HAVING COUNT(DISTINCT Invoice_ID) > 1
ORDER BY Order_Count DESC, Customer_ID;

;WITH Customer_Orders AS
(
    SELECT Customer_ID, COUNT(DISTINCT Invoice_ID) AS Order_Count
    FROM retail_sales
    WHERE Customer_ID IS NOT NULL AND Invoice_ID IS NOT NULL
    GROUP BY Customer_ID
)
SELECT
    COUNT(*) AS Total_Customers,
    COALESCE(SUM(CASE WHEN Order_Count > 1 THEN 1 ELSE 0 END), 0) AS Repeat_Customers,
    CAST(
        100.0 * COALESCE(SUM(CASE WHEN Order_Count > 1 THEN 1 ELSE 0 END), 0)
        / NULLIF(COUNT(*), 0)
        AS DECIMAL(6,2)
    ) AS Repeat_Customer_Rate_Pct
FROM Customer_Orders;
