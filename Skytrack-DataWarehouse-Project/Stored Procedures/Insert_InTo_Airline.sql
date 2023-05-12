CREATE PROCEDURE [dwh].[Insert_To_Airline]

AS
	SET NOCOUNT ON;

    INSERT INTO [dwh].[dim_airlines] ([airline_name], [cabin_flown], [Link], [route])
	SELECT [airline_name], [cabin_flown], [link], [route]
	FROM (
		SELECT DISTINCT [airline_name], [cabin_flown], [link], [route]
		FROM [stg].[staging_airline]
		UNION
		SELECT DISTINCT [airline_name], NULL as [cabin_flown], [link], NULL as [route]
		FROM [stg].[staging_lounge]
		UNION
		SELECT DISTINCT [airline_name], [cabin_flown], [link], NULL as [route]
		FROM [stg].[staging_seat]
	) AS dim_airlines
RETURN 0
