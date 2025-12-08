SELECT 
    CustomerID,
    SalesPersonID,
    AVG(SubTotal) AS avg_subtotal,
    SUM(SubTotal) AS sum_subtotal
FROM Sales.SalesOrderHeader
GROUP BY CustomerID, SalesPersonID
ORDER BY CustomerID DESC;
