{{ config(materialized='ephemeral') }}

SELECT
    CustomerID,
    CONCAT(FirstName, ' ', LastName) AS FullName,
    EmailAddress
FROM AdventureWorksLT2019.SalesLT.Customer