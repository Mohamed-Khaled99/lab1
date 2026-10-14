{% set environment = 'production' %}

SELECT
    CustomerID,
    FirstName,

    {% if environment == 'production' %}

        EmailAddress

    {% else %}

        NULL AS EmailAddress

    {% endif %}

FROM {{ source('adventureworks', 'Customer') }}