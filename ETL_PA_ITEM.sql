with MaxDatePrice
as
(
	select Item_ID, MAX(Price_Date) as LastDate from [PricingApplication].dbo.PR_PRICE
	group by Item_ID
)

insert into [PromotionApplication].[dbo].[PA_ITEM]
select I.Item_ID
	, I.Item_Name
	, I.Item_Description
	, I.Brand_ID
	, B.Brand_Name
	, I.Category_ID
	, C.Category_Name
	, MP.LastDate
	, P.Price_Value
	 from [ItemCatalogue].dbo.IC_ITEM I
	 join [ItemCatalogue].dbo.IC_BRAND B on I.Brand_ID=B.Brand_ID
	 join  [ItemCatalogue].dbo.IC_CATEGORY C on I.Category_ID=C.Category_ID
	 join MaxDatePrice MP on I.Item_ID=MP.Item_ID
	 join  [PricingApplication].dbo.PR_PRICE P on MP.Item_ID=P.Item_ID and MP.LastDate=P.Price_Date

-----
select * from [PromotionApplication].[dbo].[PA_ITEM]
