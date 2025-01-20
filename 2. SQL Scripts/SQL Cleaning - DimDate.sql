-- Getting relevant columns from DimDate table --

SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS WeekNumber, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS MonthShortName, 
  [MonthNumberOfYear] AS MonthNumber, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2023   -- We want only dates starting 2023
