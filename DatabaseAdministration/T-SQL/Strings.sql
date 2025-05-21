--char - ASCII - 1 byte
--varchar - ASCII - 1 byte
--nchar - UNICODE - 2 bytes
--nvarchar - UNICODE - 2 bytes

DECLARE @chrMyCharacters as varchar(10)

set @chrMyCharacters = 'hello'

select @chrMyCharacters as myString, len(@chrMyCharacters) as MyLength, DATALENGTH(@chrMyCharacters) as myDataLength

go

DECLARE @chrMyCharacters as nvarchar(10)

set @chrMyCharacters = N'hello'

select @chrMyCharacters as myString, len(@chrMyCharacters) as MyLength, DATALENGTH(@chrMyCharacters) as myDataLength