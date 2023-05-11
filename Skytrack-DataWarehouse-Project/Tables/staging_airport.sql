CREATE TABLE [stg].[staging_airport]
(
	[airport_name] [varchar](400) NULL,
	[link] [varchar](400) NULL,
	[title] [varchar](400) NULL,
	[author] [varchar](400) NULL,
	[author_country] [varchar](400) NULL,
	[review_date] [varchar](400) NULL,
	[content] [text] NULL,
	[experience_airport] [varchar](400) NULL,
	[date_visit] [varchar](400) NULL,
	[type_traveller] [varchar](400) NULL,
	[overall_rating] [int] NULL,
	[queuing_rating] [int] NULL,
	[terminal_cleanliness_rating] [int] NULL,
	[terminal_seating_rating] [int] NULL,
	[terminal_signs_rating] [int] NULL,
	[food_beverages_rating] [int] NULL,
	[airport_shopping_rating] [int] NULL,
	[wifi_connectivity_rating] [int] NULL,
	[airport_staff_rating] [int] NULL,
	[recommended] [int] NULL
)
