use [ItemCatalogue]
go
declare @i int=0
	, @iString varchar(5)=''

while @i<10
begin 
	set @iString=cast(@i as varchar(5))

	insert into [dbo].[IC_BRAND]
	values ('Brand'+@iString, 'Brand '+@iString+' description')

	set @i=@i+1
end 

select * from [IC_BRAND]