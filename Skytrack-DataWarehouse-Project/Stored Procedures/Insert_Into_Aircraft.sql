CREATE PROCEDURE [dwh].[Insert_Into_Aircraft]
AS
	SET NOCOUNT ON;
	
	-- Inserting data into dim_aircrafts table
    INSERT INTO [dwh].[dim_aircrafts] ([airline_id], [aircraft], [seat_layout])

	-- Selecting distinct airline_id, aircraft, and seat_layout from staging tables
	SELECT [airline_id],[aircraft],[seat_layout]
	FROM
	(SELECT DISTINCT a.[airline_id], s.[aircraft], s.[seat_layout]
    FROM [dwh].[dim_airlines] a
    JOIN (
        -- Selecting airline_name, aircraft, and seat_layout from staging_seat table
        SELECT [airline_name], [aircraft], [seat_layout]
        FROM [stg].[staging_seat]
        GROUP BY [airline_name], [aircraft], [seat_layout]
    ) s ON a.[airline_name] = s.[airline_name]
	
	-- Union with distinct aircraft and null values for airline_id and seat_layout from staging_airline table
	UNION
	SELECT DISTINCT NULL AS [airline_id], [aircraft],  NULL AS [seat_layout]
	FROM [stg].[staging_airline]
	) as dim_airline
	
	-- Return 0 to indicate successful execution
	RETURN 0
