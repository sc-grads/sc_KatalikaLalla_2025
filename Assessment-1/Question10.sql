SELECT 
    LocationID,
    SUM(Quantity) * 10 AS total_quantity
FROM Production.ProductInventory
GROUP BY LocationID;
