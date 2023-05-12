CREATE PROCEDURE [dwh].[Insert_Into_Airport]

AS
	SET NOCOUNT ON;

    INSERT INTO [dwh].[dim_airports] ([airport_name], [link], [experience_airport])
    SELECT DISTINCT [airport_name],[link],[experience_airport]
	FROM (
	SELECT DISTINCT [airport_name],[link],[experience_airport]
	FROM [stg].[staging_airport]
	UNION 
	SELECT DISTINCT [airport],[link],NULL as [experience_airport]
	FROM [stg].[staging_lounge]) as dim_airport
RETURN 0
