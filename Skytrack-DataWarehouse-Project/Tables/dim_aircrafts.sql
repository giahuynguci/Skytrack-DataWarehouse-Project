CREATE TABLE [dwh].[dim_aircrafts]
(
	[aircraft_id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[airline_id] [int] NULL,
	[aircraft] [varchar](400) NULL,
	[seat_layout] [varchar](400) NULL,
	FOREIGN KEY ([airline_id]) REFERENCES [dwh].[dim_airlines]([airline_id])
)
