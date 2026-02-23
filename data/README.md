# Data Folder

This folder contains the datasets used in the Customer Retention & Revenue Analytics project.

## Files Included

- `online_retail_sample.csv`  
  A sample of the original dataset used for demonstration purposes.

- `online_retail_cleaned_sample.csv`  
  Cleaned version of the dataset after preprocessing in Python.

## Data Processing Steps

The dataset was cleaned using Python (Pandas) by:
- Removing missing Customer_ID values
- Filtering invalid or negative transactions
- Creating a Revenue column
- Formatting date fields for time-based analysis

The cleaned dataset was then used for:
- SQL-based KPI calculations
- Monthly revenue analysis
- Customer retention evaluation
