use PricingApplication
go 

create table #tempDatePrice
(
	DistinctDate date unique
	, Price decimal(18,2) default(0)
)

declare @i int=0
	, @date date='1/1/2016'
	, @itemId int
	, @startDate date=DATEADD(d, ROUND(365*RAND(),0, 1), '1/1/2016')

declare CItem cursor fast_forward 
for
select Item_ID from ItemCatalogue.dbo.IC_ITEM 
order by Item_ID

open CItem
fetch next from CItem into @itemId

while @@FETCH_STATUS=0
begin 
	set @startDate=DATEADD(d, ROUND(365*RAND(),0, 1), '1/1/2016')
	
	if @startDate>=GETDATE()
		set @startDate=DATEADD(d, -10, GETDATE())

	--generate 10 distinct dates for current item
	set @i=0
	while @i<10
	begin
		insert into #tempDatePrice
		select DATEADD(d, @i, ISNULL(MAX(DistinctDate),@startDate))
				,ROUND(100000*RAND(), 2)
		from #tempDatePrice

		set @i=@i+1
	end

	insert into PricingApplication.dbo.PR_PRICE
	select @itemId
			, DistinctDate as Price_Date
			, Price as Price_Value
	from #tempDatePrice

	delete from #tempDatePrice

	fetch next from CItem into @itemId
end 

close CItem
deallocate CItem
drop table #tempDatePrice
---------------
select * from PricingApplication.dbo.PR_PRICE

