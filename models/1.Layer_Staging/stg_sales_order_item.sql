select
    SalesOrderID,
    ProductID,
    OrderQty,
    UnitPrice
from {{ source('adventureworks', 'SalesOrderDetail') }}