CREATE PROCEDURE [dwh].[Insert_Into_Airport]
AS
	SET NOCOUNT ON;

	-- Inserting data into dim_airports table
    INSERT INTO [dwh].[dim_airports] ([airport_name], [link], [experience_airport])
	
	-- Selecting distinct airport_name, link, and experience_airport from staging tables
    SELECT DISTINCT [airport_name], [link], [experience_airport]
	FROM (
		-- Selecting distinct airport_name, link, and experience_airport from staging_airport table
		SELECT DISTINCT [airport_name], [link], [experience_airport]
		FROM [stg].[staging_airport]
		
		-- Union with distinct airport, link, and null value for experience_airport from staging_lounge table
		UNION 
		SELECT DISTINCT [airport], [link], NULL AS [experience_airport]
		FROM [stg].[staging_lounge]
	) AS dim_airport

	-- Return 0 to indicate successful execution
	RETURN 0
