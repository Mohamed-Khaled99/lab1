{{ config(
    materialized='incremental'
    ) }}

SELECT
    ID,
    ProductName,
    Quantity,
    Price,
    Quantity * Price AS SalesAmount,
    GETDATE() As LoadedAt 

FROM AdventureWorksLT2019.dbo.IncrementalDemo

{% if is_incremental() %}

WHERE ID > (
    SELECT MAX(ID)
    FROM {{ this }}
)

{% endif %}