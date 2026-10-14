SELECT
    {{ multiply('OrderQty', 'UnitPrice') }} AS SalesAmount

FROM {{ ref('fact_sales') }}