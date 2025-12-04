SELECT 
    p.FirstName,
    p.LastName,
    p.BusinessEntityID AS Employee_id
FROM Person.Person AS p
ORDER BY p.LastName ASC;
