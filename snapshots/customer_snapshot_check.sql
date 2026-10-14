
{% snapshot customer_snapshot_check %}

{{
    config(
        target_schema='dbo',
        unique_key='CustomerID',
        strategy='check',
        check_cols=['LastName', 'CompanyName']
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

