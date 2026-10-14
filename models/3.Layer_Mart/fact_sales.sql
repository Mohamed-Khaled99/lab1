select
    SalesOrderID,
    OrderDate,
    CustomerID,
    ProductID,
    OrderQty,
    UnitPrice,
    SalesAmount
from {{ ref('int_sales') }}