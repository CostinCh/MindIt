Instructiuni

Dezvoltarea s-a facut in SQL Server 2014.

Pasi:
1/ Se executa scripturile de creare BDs si tabelele corespunzatoare fiecarei BD. Scripturile sunt:
CreateItemCatalogue.sql,
CreatePricingApp.sql,
CreatePromoApp.sql

OBS: In scripturile de creare BDs de mai sus s-a folosit calea "C:\DataMindIt". A se schimba dupa preferinta sau a se crea acelasi folder pe server.

2/ Se executa scripturile de inserare inregistrari:
InsertCategories.sql,
InsertBrands.sql,
InsertItems.sql,
InsertPrices.sql

3/ Se executa scriptul de populare tabela PA_ITEM:

ETL_PA_ITEM.sql

