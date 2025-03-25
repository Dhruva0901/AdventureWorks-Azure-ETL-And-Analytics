CREATE DATABASE SCOPED CREDENTIAL cred_dhruva
WITH
IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE ext_source_silver
WITH
(
    LOCATION = 'https://adventue1datalake.blob.core.windows.net/adventure-works-silver',
    CREDENTIAL = cred_dhruva
)

CREATE EXTERNAL DATA SOURCE ext_source_gold
WITH
(
    LOCATION = 'https://adventue1datalake.blob.core.windows.net/adventure-works-gold',
    CREDENTIAL = cred_dhruva
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = ext_source_gold,
    FILE_FORMAT = format_parquet
)
AS
(SELECT * FROM gold.sales)

CREATE EXTERNAL TABLE gold.extcustomer
WITH
(
    LOCATION = 'extcustomer',
    DATA_SOURCE = ext_source_gold,
    FILE_FORMAT = format_parquet
)
AS
(SELECT * FROM gold.customer)

CREATE EXTERNAL TABLE gold.extcalender
WITH
(
    LOCATION = 'extcalender',
    DATA_SOURCE = ext_source_gold,
    FILE_FORMAT = format_parquet
)
AS
(SELECT * FROM gold.calender)

CREATE EXTERNAL TABLE gold.extprod
WITH
(
    LOCATION = 'extprod',
    DATA_SOURCE = ext_source_gold,
    FILE_FORMAT = format_parquet
)
AS
(SELECT * FROM gold.product)

CREATE EXTERNAL TABLE gold.extprodcat
WITH
(
    LOCATION = 'extprodcat',
    DATA_SOURCE = ext_source_gold,
    FILE_FORMAT = format_parquet
)
AS
(SELECT * FROM gold.prod_cat)

CREATE EXTERNAL TABLE gold.extprodsubcat
WITH
(
    LOCATION = 'extprodsubcat',
    DATA_SOURCE = ext_source_gold,
    FILE_FORMAT = format_parquet
)
AS
(SELECT * FROM gold.prod_subcat)

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturens',
    DATA_SOURCE = ext_source_gold,
    FILE_FORMAT = format_parquet
)
AS
(SELECT * FROM gold.prod_returns)

CREATE EXTERNAL TABLE gold.extterr
WITH
(
    LOCATION = 'extterr',
    DATA_SOURCE = ext_source_gold,
    FILE_FORMAT = format_parquet
)
AS
(SELECT * FROM gold.terr)

