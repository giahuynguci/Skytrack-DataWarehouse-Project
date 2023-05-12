CREATE PROCEDURE [dwh].[Insert_Into_Lounge]
AS
    INSERT INTO [dwh].[dim_lounges]
           ([airline_id]
           ,[airport_id]
           ,[lounge_name]
           ,[lounge_type])
	SELECT DISTINCT a.airline_id, b.airport_id, c.lounge_name, c.lounge_type
    FROM [stg].[staging_lounge] c
    LEFT JOIN [dwh].[dim_airlines] a ON a.airline_name = c.airline_name 
    LEFT JOIN [dwh].[dim_airports] b ON b.airport_name = c.airport
RETURN 0
