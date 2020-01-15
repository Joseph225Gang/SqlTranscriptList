
create proc spNumIndex(@searchNum as int)
as
begin
	SET STATISTICS IO ON
	select * from numIndex
	where num = @searchNum
end 

exec spNumIndex 10000

drop proc spNumIndex