SELECT
    CustomerID,
    FirstName,
    LastName,
    EmailAddress
FROM {{ source('adventureworks', 'Customer') }};