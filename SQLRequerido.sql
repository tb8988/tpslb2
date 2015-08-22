select c.CustomerID
, c.StoreID
, c.TerritoryID
, c.AccountNumber
, c.ModifiedDate
, p.PersonType
, p.NameStyle
, p.Title
, p.FirstName
, p.MiddleName
, p.LastName
, p.Suffix
, p.EmailPromotion
, p.ModifiedDate
, ba.AddressID
, ad.AddressID
, ad.AddressLine1
, ad.AddressLine2
, ad.City
, ad.PostalCode
, sp.Name as StateProvince
, sp.StateProvinceCode
, sp.CountryRegionCode
from Sales.Customer c
left join Person.Person p
on c.PersonID = p.BusinessEntityID
left join Person.BusinessEntityAddress ba
on p.BusinessEntityID = ba.BusinessEntityID
left join Person.Address ad
on ba.AddressID = ad.AddressID
left join Person.StateProvince sp
on ad.StateProvinceID = sp.StateProvinceID





select c.CustomerID
, c.StoreID
, c.TerritoryID
, c.AccountNumber
, c.ModifiedDate
, p.PersonType
, p.NameStyle
, p.Title
, p.FirstName
, p.MiddleName
, p.LastName
, p.Suffix
, p.EmailPromotion
, p.ModifiedDate
, ba.AddressID
from Sales.Customer c
left join Person.Person p
on c.PersonID = p.BusinessEntityID
left join Person.BusinessEntityAddress ba
on p.BusinessEntityID = ba.BusinessEntityID


select ad.AddressID
, ad.AddressLine1
, ad.AddressLine2
, ad.City
, ad.PostalCode
, sp.Name as StateProvince
, sp.StateProvinceCode
, sp.CountryRegionCode
from Person.Address ad
left join Person.StateProvince sp
on ad.StateProvinceID = sp.StateProvinceID

select c.CustomerID
, c.StoreID
, c.TerritoryID
, c.AccountNumber
, c.ModifiedDate
, p.PersonType
, p.NameStyle
, p.Title
, p.FirstName
, p.MiddleName
, p.LastName
, p.Suffix
, p.EmailPromotion
, ba.AddressID
into [lab2].[dbo].[Customers]
from [AdventureWorks2014].Sales.Customer c
left join [AdventureWorks2014].Person.Person p
on c.PersonID = p.BusinessEntityID
left join [AdventureWorks2014].Person.BusinessEntityAddress ba
on p.BusinessEntityID = ba.BusinessEntityID

select ad.AddressID
, ad.AddressLine1
, ad.AddressLine2
, ad.City
, ad.PostalCode
, sp.Name as StateProvince
, sp.StateProvinceCode
, sp.CountryRegionCode
into [lab2].[dbo].[Addresses]
from [AdventureWorks2014].Person.Address ad
left join [AdventureWorks2014].Person.StateProvince sp
on ad.StateProvinceID = sp.StateProvinceID