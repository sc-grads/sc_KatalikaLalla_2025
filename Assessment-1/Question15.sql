SELECT
    LocationID,
    SUM(Quantity) AS TotalQuantity
FROM Production.ProductInventory
GROUP BY ROLLUP (LocationID);
