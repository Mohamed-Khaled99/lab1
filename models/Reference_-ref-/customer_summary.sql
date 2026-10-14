SELECT
   CustomerID,
    CompanyName
FROM {{ ref('stg_customer') }}