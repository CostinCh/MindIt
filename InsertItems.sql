use [ItemCatalogue]
go

declare @i int=0
	, @iString varchar(5)=''

while @i<10000
begin 
	set @iString=cast(@i as varchar(5))

	insert into [dbo].[IC_ITEM]
	select 'Item'+@iString
			, 'Item '+@iString+' description'
			,  FLOOR(1+10*rand())
			,  FLOOR(1+5*rand())
	set @i=@i+1
end 

select * from ic_item 

