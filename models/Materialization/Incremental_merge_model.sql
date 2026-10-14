{{ config(
    materialized='incremental',
    unique_key='ID',
    incremental_strategy='merge'
) }}

SELECT
    ID,
    ProductName,
    Quantity,
    Price,
    Quantity * Price AS SalesAmount,
    UpdatedAt,
    GETDATE() AS LoadedAt

FROM AdventureWorksLT2019.dbo.ProductIncremental

{% if is_incremental() %}
WHERE UpdatedAt > (
    SELECT MAX(UpdatedAt)
    FROM {{ this }}
)
{% endif %}