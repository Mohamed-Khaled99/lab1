SELECT
    SalesOrderID,
    SalesAmount
FROM {{ ref('fact_sales') }}
WHERE SalesAmount < 0

