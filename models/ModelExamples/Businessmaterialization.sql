{{ config(materialized='view') }}

SELECT
    SalesOrderDetailID,
    SalesOrderID,
    OrderQty,
    UnitPrice,
    UnitPrice * OrderQty AS GrossSales,
    UnitPrice * OrderQty * (1 - UnitPriceDiscount) AS NetSales
FROM AdventureWorksLT2019.SalesLT.SalesOrderDetail