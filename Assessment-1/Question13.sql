SELECT
    LocationID,
    Shelf,
    SUM(Quantity) AS TotalQuantity
FROM Production.ProductInventory
GROUP BY LocationID, Shelf;
