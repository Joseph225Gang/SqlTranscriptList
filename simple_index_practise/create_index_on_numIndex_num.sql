/****** SSMS 中 SelectTopNRows 命令的指令碼  ******/
SELECT TOP (1000) [id]
      ,[num]
  FROM [Default].[dbo].[numIndex]

 SET STATISTICS IO ON

  select * from numIndex where num = 2000

  CREATE NONCLUSTERED INDEX index_num
	ON numIndex(num);

drop index index_num on numIndex