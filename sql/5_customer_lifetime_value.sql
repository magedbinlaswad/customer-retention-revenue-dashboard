/* Observed-period customer revenue.
   The legacy filename and Lifetime_Value alias are retained for compatibility.
   This aggregation is not a forecast of customer lifetime value. */

SELECT Customer_ID, SUM(Revenue) AS Lifetime_Value
FROM retail_sales
WHERE Customer_ID IS NOT NULL
GROUP BY Customer_ID
ORDER BY Lifetime_Value DESC, Customer_ID;
