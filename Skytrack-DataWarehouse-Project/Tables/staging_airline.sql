CREATE TABLE [stg].[staging_airline]
(
	[airline_name] [varchar](400) NULL,
	[link] [varchar](400) NULL,
	[title] [varchar](400) NULL,
	[author] [varchar](400) NULL,
	[author_country] [varchar](400) NULL,
	[review_date] [varchar](400) NULL,
	[content] [text] NULL,
	[aircraft] [varchar](400) NULL,
	[type_traveller] [varchar](400) NULL,
	[cabin_flown] [varchar](400) NULL,
	[route] [varchar](400) NULL,
	[overall_rating] [int] NULL,
	[seat_comfort_rating] [int] NULL,
	[cabin_staff_rating] [int] NULL,
	[food_beverages_rating] [int] NULL,
	[inflight_entertainment_rating] [int] NULL,
	[ground_service_rating] [int] NULL,
	[wifi_connectivity_rating] [int] NULL,
	[value_money_rating] [int] NULL,
	[recommended] [int] NULL
)
