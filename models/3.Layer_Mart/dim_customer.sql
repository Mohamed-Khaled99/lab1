SELECT
  CustomerID,
    FirstName,
    LastName,
    CompanyName
FROM {{ ref('stg_customer') }}