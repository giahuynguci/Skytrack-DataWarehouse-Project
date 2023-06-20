CREATE PROCEDURE [dwh].[Insert_To_Airline]
AS
	SET NOCOUNT ON;

	-- Inserting data into dim_airlines table
    INSERT INTO [dwh].[dim_airlines] ([airline_name], [cabin_flown], [Link], [route])

	-- Selecting airline_name, cabin_flown, link, and route from staging tables
	SELECT [airline_name], [cabin_flown], [link], [route]
	FROM (
		-- Selecting distinct airline_name, cabin_flown, link, and route from staging_airline table
		SELECT DISTINCT [airline_name], [cabin_flown], [link], [route]
		FROM [stg].[staging_airline]
		
		-- Union with distinct airline_name, null values for cabin_flown and route, and link from staging_lounge table
		UNION
		SELECT DISTINCT [airline_name], NULL AS [cabin_flown], [link], NULL AS [route]
		FROM [stg].[staging_lounge]
		
		-- Union with distinct airline_name, cabin_flown, null value for route, and link from staging_seat table
		UNION
		SELECT DISTINCT [airline_name], [cabin_flown], [link], NULL AS [route]
		FROM [stg].[staging_seat]
	) AS dim_airlines

	-- Return 0 to indicate successful execution
	RETURN 0
