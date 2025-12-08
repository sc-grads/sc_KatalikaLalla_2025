SELECT 
    ProductID,
    ProductNumber,
    Name
FROM Production.Product
WHERE SellStartDate IS NOT NULL
  AND ProductLine = 'T'
ORDER BY Name ASC;
