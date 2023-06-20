CREATE PROCEDURE [dwh].[Insert_Into_Lounge]
AS
    -- Inserting data into the [dim_lounges] table
    INSERT INTO [dwh].[dim_lounges]
           ([airline_id]
           ,[airport_id]
           ,[lounge_name]
           ,[lounge_type])
	SELECT DISTINCT 
        a.airline_id, -- Selecting the corresponding airline ID
        b.airport_id, -- Selecting the corresponding airport ID
        c.lounge_name, -- Selecting the lounge name
        c.lounge_type -- Selecting the lounge type
    FROM [stg].[staging_lounge] c
    -- Joining [staging_lounge] with [dim_airlines] to get the airline ID
    LEFT JOIN [dwh].[dim_airlines] a ON a.airline_name = c.airline_name 
    -- Joining [staging_lounge] with [dim_airports] to get the airport ID
    LEFT JOIN [dwh].[dim_airports] b ON b.airport_name = c.airport
RETURN 0
