/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
SELECT TOP (1000) [id]
      ,[num]
  FROM [Default].[dbo].[numIndex]
declare @_i int
set @_i = 0
DECLARE @_MAX INT
 SET @_MAX = 200000 -- 要產生幾筆資料
 WHILE (@_i<@_MAX)
 BEGIN
  DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT
SET @Lower = 1 ---- The lowest random number
SET @Upper = 30000 ---- One more than the highest random number
SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0)
insert into dbo.numIndex(id,num)values(@_i,@Random)
Set @_i=@_i+1
end