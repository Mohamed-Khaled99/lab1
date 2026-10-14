SELECT

    
    SalesAmount,

    {{ sales_category('SalesAmount') }} AS SalesCategory

FROM {{ ref('fact_sales') }}