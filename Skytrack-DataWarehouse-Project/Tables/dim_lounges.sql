CREATE TABLE [dwh].[dim_lounges]
(
	[lounge_id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[airline_id] [int] NULL,
	[airport_id] [int] NULL,
	[lounge_name] [varchar](400) NULL,
	[lounge_type] [varchar](400) NULL
)
