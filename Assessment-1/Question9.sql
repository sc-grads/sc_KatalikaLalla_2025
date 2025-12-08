SELECT 
    ProductID,
    SUM(Quantity) AS total_quantity
FROM Production.ProductInventory
WHERE Shelf IN ('A', 'C', 'H')
GROUP BY ProductID
HAVING SUM(Quantity) > 500
ORDER BY ProductID ASC;
