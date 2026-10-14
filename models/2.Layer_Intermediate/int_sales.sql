select
    o.SalesOrderID,
    o.OrderDate,
    o.CustomerID,
    i.ProductID,
    i.OrderQty,
    i.UnitPrice,
    i.OrderQty * i.UnitPrice as SalesAmount
from {{ ref('stg_sales_order') }} o
join {{ ref('stg_sales_order_item') }} i
    on o.SalesOrderID = i.SalesOrderID