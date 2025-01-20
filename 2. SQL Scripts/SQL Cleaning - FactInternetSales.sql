-- Cleaning FactInternetSales Table --

SELECT 
  ProductKey, 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber, 
  SalesAmount 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales]
WHERE 
  LEFT (OrderDateKey, 4) = 2023 OR LEFT (OrderDateKey, 4) = 2024 -- We only want data starting from 2023
ORDER BY
  OrderDateKey ASC