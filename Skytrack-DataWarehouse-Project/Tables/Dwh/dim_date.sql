CREATE TABLE [dwh].[dim_date]
(
	[Datekey] DATE NOT NULL PRIMARY KEY, 
    [DayofMonth] INT NULL, 
    [MonthNumber] INT NULL, 
    [FirstOfMonth] DATE NULL, 
    [ShortMonth] VARCHAR(5) NULL, 
    [MonthName] VARCHAR(50) NULL, 
    [MonthNumberYear] VARCHAR(50) NULL, 
    [WeekNumber] INT NULL, 
    [DayOfWeek] INT NULL, 
    [QuarterFull] VARCHAR(50) NULL, 
    [Qrt] INT NULL, 
    [QuarterYear] VARCHAR(50) NULL, 
    [Year] INT NULL, 
    [FirstOfYear] DATE NULL
)
