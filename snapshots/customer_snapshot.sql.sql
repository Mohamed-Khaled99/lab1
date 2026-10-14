{% snapshot customer_snapshot %}

{{
    config(
        target_schema='dbo',
        unique_key='CustomerID',
        strategy='timestamp',
        updated_at='ModifiedDate'
    )
}}

SELECT
    CAST(CustomerID AS INT) AS CustomerID,
    FirstName,
    LastName,
    CompanyName,
    ModifiedDate
FROM {{ source('adventureworks', 'Customer') }}

{% endsnapshot %}