
SELECT
    CustomerID,
    FullName,
    EmailAddress
FROM {{ ref('Ephemeral') }}