CREATE TABLE [dwh].[dim_airlines]
(
	[airline_id] [int] IDENTITY(1,1)  PRIMARY KEY NOT NULL,
	[airline_name] [varchar](400) NULL,
	[Link] [varchar](400) NULL,
	[cabin_flown] [varchar](400) NULL,
	[route] [varchar](400) NULL,
)
