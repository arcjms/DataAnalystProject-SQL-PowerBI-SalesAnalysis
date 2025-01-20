-- Cleaning DimProduct Table --
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  p.[EnglishProductName] AS ProductName, 
  ps.EnglishProductSubcategoryName AS SubCategory, -- Joined in from SubCategory Table
  pc.EnglishProductCategoryName AS ProductCategory, -- Joined in from Category Table
  p.[Color] AS ProductColor, 
  p.[Size] AS ProductSize, 
  p.[ProductLine] AS ProductLine, 
  p.[ModelName] AS ModelName, 
  p.[EnglishDescription] AS ProductDescription,  
  ISNULL (p.Status, 'Outdated') AS ProductStatus 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC