SELECT
    {{ dbt_utils.generate_surrogate_key([
        'CustomerID'
    ]) }} AS customer_key,

    CustomerID,
    FirstName,
    LastName,
    CompanyName

FROM {{ source('adventureworks', 'Customer') }}