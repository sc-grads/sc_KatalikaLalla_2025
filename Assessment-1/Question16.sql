SELECT 
    a.City,
    COUNT(*) AS NoOfEmployees
FROM Person.Address AS a
INNER JOIN Person.BusinessEntityAddress AS bea
    ON a.AddressID = bea.AddressID
INNER JOIN Person.Person AS p
    ON bea.BusinessEntityID = p.BusinessEntityID
INNER JOIN HumanResources.Employee AS e
    ON p.BusinessEntityID = e.BusinessEntityID
GROUP BY a.City
ORDER BY a.City ASC;
