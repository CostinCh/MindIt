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

3/ Solutia 1:
Se executa scriptul de populare tabela PA_ITEM:
ETL_PA_ITEM.sql

OBS: In situatia data cu BDs SQL Server pe acelasi server aceasta solutie e preferabila. 

Solutia 2:
Se face Deploy project in Internet Services Catalog la 
SSIS ETL MindIt 2014.ispac
Apoi se executa pachetul package.dtsx

OBS: nu e necesar parametrajul pentru default instance de SQL. Pentru instante numite se editeaza connectionstring-ul celor 2 conexiuni schimband (local) cu numele instantei.

