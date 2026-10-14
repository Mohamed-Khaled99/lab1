{% set environment = 'dev' %}

SELECT
    CustomerID,
    FirstName,
    LastName

{% if environment == 'production' %}

    ,EmailAddress

{% endif %}

FROM {{ source('adventureworks', 'Customer') }}