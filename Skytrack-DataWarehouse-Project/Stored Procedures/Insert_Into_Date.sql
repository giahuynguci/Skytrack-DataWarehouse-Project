CREATE PROCEDURE [dwh].[Insert_Into_Date]
AS
	SET NOCOUNT ON;

    INSERT INTO [dwh].[dim_date] ([Datekey]
      ,[DayofMonth]
      ,[MonthNumber]
      ,[FirstOfMonth]
      ,[ShortMonth]
      ,[MonthName]
      ,[MonthNumberYear]
      ,[WeekNumber]
      ,[DayOfWeek]
      ,[QuarterFull]
      ,[Qrt]
      ,[QuarterYear]
      ,[Year]
      ,[FirstOfYear])

    SELECT
		    review_date AS Datekey,
                DAY(review_date) AS DayofMonth,
                MONTH(review_date) MonthNumber,
                CONVERT(date, DATEADD(mm, DATEDIFF(mm, 0, review_date), 0)) as FirstOfMonth,
                LEFT(DATENAME(MONTH, review_date), 3) as ShortMonth,
                DATENAME(MONTH, review_date) as MonthName,
                CAST(MONTH(review_date) AS varchar(2)) + '/' + CAST(YEAR(review_date) AS varchar(4)) as MonthNumberYear,
                DATEPART(WEEK, review_date) as WeekNumber,
                DATEPART(WEEKDAY, review_date) as DayOfWeek,
                'Quarter ' + CAST(DATEPART(QUARTER, review_date) AS varchar(1)) QuarterFull,
                DATEPART(QUARTER, review_date) as Qrt,
                'Q' + CAST(DATEPART(QUARTER, review_date) AS varchar(1)) + ' ' + CAST(YEAR(review_date) AS varchar(4)) as QuarterYear,
                YEAR(review_date) Year,
                CONVERT(date, DATEADD(yy, DATEDIFF(yy, 0, review_date), 0)) as FirstOfYear
    From [stg].[staging_airline]
    UNION
    SELECT
		    review_date AS Datekey,
                DAY(review_date) AS DayofMonth,
                MONTH(review_date) MonthNumber,
                CONVERT(date, DATEADD(mm, DATEDIFF(mm, 0, review_date), 0)) as FirstOfMonth,
                LEFT(DATENAME(MONTH, review_date), 3) as ShortMonth,
                DATENAME(MONTH, review_date) as MonthName,
                CAST(MONTH(review_date) AS varchar(2)) + '/' + CAST(YEAR(review_date) AS varchar(4)) as MonthNumberYear,
                DATEPART(WEEK, review_date) as WeekNumber,
                DATEPART(WEEKDAY, review_date) as DayOfWeek,
                'Quarter ' + CAST(DATEPART(QUARTER, review_date) AS varchar(1)) QuarterFull,
                DATEPART(QUARTER, review_date) as Qrt,
                'Q' + CAST(DATEPART(QUARTER, review_date) AS varchar(1)) + ' ' + CAST(YEAR(review_date) AS varchar(4)) as QuarterYear,
                YEAR(review_date) Year,
                CONVERT(date, DATEADD(yy, DATEDIFF(yy, 0, review_date), 0)) as FirstOfYear
    From [stg].[staging_airport]
    UNION
    SELECT
		    review_date AS Datekey,
                DAY(review_date) AS DayofMonth,
                MONTH(review_date) MonthNumber,
                CONVERT(date, DATEADD(mm, DATEDIFF(mm, 0, review_date), 0)) as FirstOfMonth,
                LEFT(DATENAME(MONTH, review_date), 3) as ShortMonth,
                DATENAME(MONTH, review_date) as MonthName,
                CAST(MONTH(review_date) AS varchar(2)) + '/' + CAST(YEAR(review_date) AS varchar(4)) as MonthNumberYear,
                DATEPART(WEEK, review_date) as WeekNumber,
                DATEPART(WEEKDAY, review_date) as DayOfWeek,
                'Quarter ' + CAST(DATEPART(QUARTER, review_date) AS varchar(1)) QuarterFull,
                DATEPART(QUARTER, review_date) as Qrt,
                'Q' + CAST(DATEPART(QUARTER, review_date) AS varchar(1)) + ' ' + CAST(YEAR(review_date) AS varchar(4)) as QuarterYear,
                YEAR(review_date) Year,
                CONVERT(date, DATEADD(yy, DATEDIFF(yy, 0, review_date), 0)) as FirstOfYear
    From [stg].[staging_lounge]
    UNION
    SELECT
		    review_date AS Datekey,
                DAY(review_date) AS DayofMonth,
                MONTH(review_date) MonthNumber,
                CONVERT(date, DATEADD(mm, DATEDIFF(mm, 0, review_date), 0)) as FirstOfMonth,
                LEFT(DATENAME(MONTH, review_date), 3) as ShortMonth,
                DATENAME(MONTH, review_date) as MonthName,
                CAST(MONTH(review_date) AS varchar(2)) + '/' + CAST(YEAR(review_date) AS varchar(4)) as MonthNumberYear,
                DATEPART(WEEK, review_date) as WeekNumber,
                DATEPART(WEEKDAY, review_date) as DayOfWeek,
                'Quarter ' + CAST(DATEPART(QUARTER, review_date) AS varchar(1)) QuarterFull,
                DATEPART(QUARTER, review_date) as Qrt,
                'Q' + CAST(DATEPART(QUARTER, review_date) AS varchar(1)) + ' ' + CAST(YEAR(review_date) AS varchar(4)) as QuarterYear,
                YEAR(review_date) Year,
                CONVERT(date, DATEADD(yy, DATEDIFF(yy, 0, review_date), 0)) as FirstOfYear
    From [stg].[staging_seat]
RETURN 0
