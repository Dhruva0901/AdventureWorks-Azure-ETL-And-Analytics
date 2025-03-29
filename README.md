# AdventureWorks Azure ETL and Analytics Project 

## Overview  
Businesses require a scalable and automated data pipeline to extract, transform, and analyze data efficiently. This project demonstrates how to design and implement a robust ETL pipeline using Azure Data Factory, Databricks, and Azure Synapse Analytics, and Microsoft PowerBI. The project follows the Medallion Architecture:
  - Bronze Layer: Raw data ingestion from APIs.
  - Silver Layer: Data cleaning and transformation.
  - Gold Layer: Aggregated and structured data ready for analytics.

## Features  
1) Data Ingestion with Azure Data Factory
    - Used Azure Data Factory to fetch data via API (GitHub-hosted CSV files).
    - Configured an ADF HTTP Linked Service to interact with the GitHub API and Data Lake Service to interact with storage container.
    - Used dynamic parameters to handle multiple dataset URLs, making the pipeline reusable.
    - Implemented pagination handling to fetch large datasets efficiently and retry logic to handle API failures.

2) Data Transformation using Databricks
    - Used Apache Spark & PySpark for high-performance distributed data transformation.
    - Handled redundant and NULL records to ensure data integrity.
    - Perfomed Feature Engineering on cleaned data.
        - Derived Customer Lifetime Value (CLV) by aggregating purchase data over time. Used Spark Window Functions to compute cumulative spending per customer.
        - Created moving averages to track trends and seasonality. Used Spark SQL & DataFrames to calculate rolling averages dynamically.
    - Loaded the transformed data into the Silver container in Azure Data Lake Gen2 for further analysis.
  
3) Data Serving with Azure Synapse Analytics
    - Created Views for Each Table. Simplified complex joins and aggregations by building logical SQL views, enhancing readability and ease of access for reporting.
    - Enabled efficient querying by creating external tables in Azure Synapse, linking to data stored in Azure Data Lake Gen2 using PolyBase.
    - Improved performance by partitioning tables (e.g., by date) and implementing indexing to enable faster, more efficient queries on large datasets.

## Flow Architecture
![Web_Photo_Editor](https://github.com/user-attachments/assets/612f98f5-97d7-401a-ba3d-c6f10afe0110)




        




