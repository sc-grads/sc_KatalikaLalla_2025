SELECT 
    p.BusinessEntityID,
    p.FirstName,
    p.LastName,
    pp.PhoneNumber AS person_phone
FROM Person.Person AS p
INNER JOIN Person.PersonPhone AS pp
    ON p.BusinessEntityID = pp.BusinessEntityID
WHERE p.LastName LIKE 'L%'
ORDER BY p.LastName, p.FirstName;
