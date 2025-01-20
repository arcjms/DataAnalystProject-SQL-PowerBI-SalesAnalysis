-- Cleaning DimCustomer Table --
SELECT 
  c.customerkey AS CustomerKey,    
  c.firstname AS FirstName, 
  c.lastname AS LastName, 
  c.firstname + ' ' + lastname AS FullName, 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS CustomerCity -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered by CustomerKey
