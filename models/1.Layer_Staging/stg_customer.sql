select
    CustomerID,
    FirstName,
    LastName,
    CompanyName
from {{ source('adventureworks', 'Customer') }}