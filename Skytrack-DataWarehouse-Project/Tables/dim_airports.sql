CREATE TABLE [dwh].[dim_airports]
(
	[airport_id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[airport_name] [varchar](400) NULL,
	[link] [varchar](400) NULL,
	[experience_airport] [varchar](400) NULL,
)
