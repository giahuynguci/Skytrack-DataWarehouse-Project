CREATE PROCEDURE [dwh].[Insert_Into_Aircraft]
AS
	SET NOCOUNT ON;

    INSERT INTO [dwh].[dim_aircrafts] ([airline_id], [aircraft], [seat_layout])

	SELECT [airline_id],[aircraft],[seat_layout]
	FROM
	(SELECT DISTINCT a.[airline_id], s.[aircraft], s.[seat_layout]
    FROM [dwh].[dim_airlines] a
    JOIN (
        SELECT [airline_name], [aircraft], [seat_layout]
        FROM [stg].[staging_seat]
        GROUP BY [airline_name], [aircraft], [seat_layout]
    ) s ON a.[airline_name] = s.[airline_name]
	UNION
	SELECT DISTINCT NULL AS [airline_id], [aircraft],  NULL AS [seat_layout]
	FROM [stg].[staging_airline]
	) as dim_airline
RETURN 0
