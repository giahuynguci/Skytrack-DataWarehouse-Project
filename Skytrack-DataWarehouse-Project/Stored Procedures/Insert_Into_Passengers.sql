CREATE PROCEDURE [dwh].[Insert_Into_Passengers]
AS
	INSERT INTO [dwh].[dim_passengers]
           ([author]
           ,[author_country]
           ,[type_traveller])
	SELECT DISTINCT [author], [author_country], [type_traveller]
	FROM [stg].[staging_airline]
	UNION
	SELECT DISTINCT [author], [author_country], [type_traveller]
	FROM [stg].[staging_airport]
	UNION
	SELECT DISTINCT [author], [author_country], [type_traveller]
	FROM [stg].[staging_lounge]
	UNION
	SELECT DISTINCT [author], [author_country], [type_traveller]
	FROM [stg].[staging_seat];
RETURN 0
