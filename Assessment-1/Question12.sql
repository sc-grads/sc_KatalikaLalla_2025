SELECT 
    SalesPersonID,
    CustomerID,
    SUM(SubTotal) AS sum_subtotal
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL
GROUP BY ROLLUP (SalesPersonID, CustomerID);
