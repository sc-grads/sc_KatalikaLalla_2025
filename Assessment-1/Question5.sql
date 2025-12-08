SELECT
    SalesOrderID,
    CustomerID,
    OrderDate,
    SubTotal,
    (TaxAmt / SubTotal) * 100 AS tax_percent
FROM Sales.SalesOrderHeader
ORDER BY SubTotal ASC;
