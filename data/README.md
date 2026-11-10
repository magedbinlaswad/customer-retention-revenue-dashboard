# Retail data samples

The files in this folder are demonstration samples for the [Customer & Revenue Analytics project](../README.md). They do not contain the complete data behind the headline results.

| File | Purpose |
| --- | --- |
| [online_retail_sample.csv](online_retail_sample.csv) | Sample of the original transaction data |
| [online_retail_cleaned_sample.csv](online_retail_cleaned_sample.csv) | Prepared sample used to illustrate the SQL analysis |

## Before analysis

- Inspect the actual CSV headers and map them to the names referenced in the SQL scripts.
- Use `Customer_ID` for customer grouping and distinct `Invoice_ID` values for order counts.
- Parse `Invoice_Date` as a date/time and `Revenue` as a suitable numeric type.
- Check missing customer IDs, duplicate line items, cancellations, returns, and invalid quantities/prices before aggregating.
- Keep the raw sample unchanged and document any additional transformations.

## Reproducibility

Import the cleaned sample as `retail_sales` in SQL Server, then run the [SQL scripts](../sql/). Sample-level totals will differ from the original dashboard. The complete cleaning implementation and authoritative dataset-source/currency metadata are not published here; no particular cleaning library can be verified from these CSV files alone.

Use these files to understand the analysis structure. Verify the source dataset's provenance and usage terms before redistributing or extending it.
