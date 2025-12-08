SELECT 
    YEAR(OrderDate) AS Year,
    SUM(TotalDue) AS OrderAmount
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY YEAR(OrderDate);
