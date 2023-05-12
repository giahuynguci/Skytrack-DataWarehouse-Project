CREATE TABLE [dwh].[dim_passengers]
(
	[Id_author] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[author] [varchar](400) NULL,
	[author_country] [varchar](400) NULL,
	[type_traveller] [varchar](400) NULL,
)
