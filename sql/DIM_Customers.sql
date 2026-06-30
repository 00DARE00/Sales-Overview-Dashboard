 -- Cleansed DIM_Customers Table --
SELECT
   c.CustomerKey AS CustomerKey
   -- ,[GeographyKey]
   -- ,[CustomerAlternateKey]
   -- ,[Title]
   ,c.FirstName AS [First Name]
   -- ,[MiddleName]
   ,c.LastName AS [Last Name]
   ,c.FirstName + ' ' + c.LastName AS [Full Name] -- Combined First & Last Name
   -- ,[NameStyle]
   -- ,[BirthDate]
   -- ,[MaritalStatus]
   -- ,[Suffix]
,CASE c.Gender WHEN 'M' Then 'Male' WHEN 'F' THEN 'Female' END AS Gender
   -- ,[EmailAddress]
   -- ,[YearlyIncome]
   -- ,[TotalChildren]
   -- ,[NumberChildrenAtHome]
   -- ,[EnglishEducation]
   -- ,[SpanishEducation]
   -- ,[FrenchEducation]
   -- ,[EnglishOccupation]
   -- ,[SpanishOccupation]
   -- ,[FrenchOccupation]
   -- ,[HouseOwnerFlag]
   -- ,[NumberCarsOwned]
   -- ,[AddressLine1]
   -- ,[AddressLine2]
   -- ,[Phone]
   ,c.DateFirstPurchase AS DateFirstPurchase
   -- ,[CommuteDistance]
   ,g.City AS [Customer City] -- Joined in Customer City fro Geography Table
FROM 
   [AdventureWorksDW2025].[dbo].[DimCustomer] AS c
   LEFT JOIN [AdventureWorksDW2025].[dbo].[DimGeography] AS  g ON g.GeographyKey = c.GeographyKey
ORDER BY 
   CustomerKey ASC -- Ordered List by CustomerKey in ascending order
