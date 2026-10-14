select
    SalesOrderID,
    OrderDate,
    CustomerID
from {{ source('adventureworks', 'SalesOrderHeader') }}