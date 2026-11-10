# SQL analysis guide

**Dialect:** Microsoft SQL Server (T-SQL). Queries read from `retail_sales`.

Import the [cleaned CSV sample](../data/online_retail_cleaned_sample.csv), check field names and types, then run each script separately in your SQL client. Use the complete original dataset only when reproducing the original project's totals.

| Script | Question answered |
| --- | --- |
| [1_monthly_revenue.sql](1_monthly_revenue.sql) | How much revenue is recorded in each month? |
| [2_top_10_customers.sql](2_top_10_customers.sql) | Which customers contribute the most revenue? |
| [3_repeat_customers.sql](3_repeat_customers.sql) | Which customers have more than one distinct order, and what share do they represent? |
| [4_revenue_by_country.sql](4_revenue_by_country.sql) | How is revenue distributed across countries? |
| [5_customer_lifetime_value.sql](5_customer_lifetime_value.sql) | How much observed-period revenue is associated with each customer? |
| [6_monthly_order_volume.sql](6_monthly_order_volume.sql) | How many distinct orders occur in each month? |
| [7_monthly_revenue_growth.sql](7_monthly_revenue_growth.sql) | How does monthly revenue change from the previous observed month? |
| [8_high_value_customers.sql](8_high_value_customers.sql) | Which customers have total spending above the configured 5,000-unit threshold? |

## Definitions and assumptions

- An order is a distinct invoice, not an individual invoice line.
- Repeat purchasing is measured within the available observation period. It is not a cohort-retention or churn model.
- The legacy `5_customer_lifetime_value.sql` filename is retained for existing links. Its sum is historical customer revenue, not a prediction of lifetime value.
- Use consistent date filters, customer exclusions, and return/cancellation rules across every KPI.
- The first observed month has no prior-month comparison. Check for missing months before interpreting growth.
- Sample data cannot independently establish the full dashboard's figures.

## Validate the outputs

Reconcile summed customer and country revenues to the overall total; compare distinct invoice/customer counts; and inspect the effect of NULL IDs and duplicate lines. Preserve the source data and record any exclusions.

[Project overview](../README.md) · [Data notes](../data/README.md)
