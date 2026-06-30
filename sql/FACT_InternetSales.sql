-- Cleansed FACT_Internet Sales Table --
SELECT 
   [ProductKey]
   ,[OrderDateKey]
   ,[DueDateKey]
   ,[ShipDateKey]
   ,[CustomerKey]
   -- ,[PromotionKey]
   -- ,[CurrencyKey]
   -- ,[SalesTerritoryKey]
   ,[SalesOrderNumber]
   -- ,[SalesOrderLineNumber]
   -- ,[RevisionNumber]
   -- ,[OrderQuantity]
   -- ,[UnitPrice]
   -- ,[ExtendedAmount]
   -- ,[UnitPriceDiscountPct]
   -- ,[DiscountAmount]
   -- ,[ProductStandardCost]
   -- ,[TotalProductCost]
   ,[SalesAmount]
   -- ,[TaxAmt]
   -- ,[Freight]
   -- ,[CarrierTrackingNumber]
   -- ,[CustomerPONumber]
   -- ,[OrderDate]
   -- ,[DueDate]
   -- ,[ShipDate]
FROM 
   [AdventureWorksDW2025].[dbo].[FactInternetSales]
WHERE
   LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures we only bring two years of date from extraction. LEFT gets the first 4 chars from the Key
ORDER BY
   OrderDateKey asc