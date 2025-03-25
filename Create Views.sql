CREATE VIEW gold.calender
AS
SELECT *
FROM
OPENROWSET
    (
        BULK 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    ) as cal_query

----------------------

CREATE VIEW gold.customer
AS
SELECT *
FROM
OPENROWSET
    (
        BULK 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    ) as cus_query

----------------------------

CREATE VIEW gold.product
AS
SELECT *
FROM
OPENROWSET
    (
        BULK 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver/AdventureWorks_Product/',
        FORMAT = 'PARQUET'
    ) as pro_query

--------------------------------

CREATE VIEW gold.prod_cat
AS
SELECT *
FROM
OPENROWSET
    (
        BULK 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver/AdventureWorks_Product_Category/',
        FORMAT = 'PARQUET'
    ) as pro_cat_query

--------------------------------

CREATE VIEW gold.prod_subcat
AS
SELECT *
FROM
OPENROWSET
    (
        BULK 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver/AdventureWorks_Product_Subcategory/',
        FORMAT = 'PARQUET'
    ) as pro_subcat_query

--------------------------------

CREATE VIEW gold.prod_returns
AS
SELECT *
FROM
OPENROWSET
    (
        BULK 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    ) as returns_query

--------------------------------

CREATE VIEW gold.sales
AS
SELECT *
FROM
OPENROWSET
    (
        BULK 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver/AdventureWorks_Sales/',
        FORMAT = 'PARQUET'
    ) as sales_query

--------------------------------

CREATE VIEW gold.terr
AS
SELECT *
FROM
OPENROWSET
    (
        BULK 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    ) as terr_query

--------------------------------
