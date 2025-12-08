SELECT 
    CustomerID,
    SUM(Freight) AS total_freight
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY CustomerID ASC;
