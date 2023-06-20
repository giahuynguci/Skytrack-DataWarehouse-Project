CREATE PROCEDURE [dwh].[Insert_Into_Passengers]
AS
	-- Inserting data into the [dim_passengers] table
	INSERT INTO [dwh].[dim_passengers]
           ([author]
           ,[author_country]
           ,[type_traveller])
	SELECT DISTINCT 
		[author], -- Selecting the passenger's author
		[author_country], -- Selecting the passenger's country
		[type_traveller] -- Selecting the passenger's type of traveler
	FROM [stg].[staging_airline]
	UNION
	SELECT DISTINCT 
		[author], -- Selecting the passenger's author
		[author_country], -- Selecting the passenger's country
		[type_traveller] -- Selecting the passenger's type of traveler
	FROM [stg].[staging_airport]
	UNION
	SELECT DISTINCT 
		[author], -- Selecting the passenger's author
		[author_country], -- Selecting the passenger's country
		[type_traveller] -- Selecting the passenger's type of traveler
	FROM [stg].[staging_lounge]
	UNION
	SELECT DISTINCT 
		[author], -- Selecting the passenger's author
		[author_country], -- Selecting the passenger's country
		[type_traveller] -- Selecting the passenger's type of traveler
	FROM [stg].[staging_seat];
RETURN 0
