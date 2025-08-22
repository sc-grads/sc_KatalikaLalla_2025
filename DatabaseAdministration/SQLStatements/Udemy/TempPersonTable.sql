select BusinessEntityID,firstname,lastname,Title
into #TempPersonTable
from [Person].[Person]
where title = 'mr.'

DROP TABLE #TempPersonTable
Create table #TempPersonTable (
BusinessEntityID int, 
Firstname nvarchar(50),
lastname nvarchar(50),
TITLE nvarchar(50)
)
INSERT INTO #TempPersonTable
SELECT BusinessEntityID,FirstName,LastName,TITLE
from [Person].[Person]
where title = 'mr.'

SELECT * FROM #TempPersonTable