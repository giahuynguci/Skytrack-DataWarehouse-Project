CREATE TABLE [dwh].[dim_lounges]
(
	[lounge_id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[airline_id] [int] NULL,
	[airport_id] [int] NULL,
	[lounge_name] [varchar](400) NULL,
	[lounge_type] [varchar](400) NULL,
	FOREIGN KEY ([airline_id]) REFERENCES [dwh].[dim_airlines]([airline_id]),
	FOREIGN KEY ([airport_id]) REFERENCES [dwh].[dim_airports]([airport_id])
)
