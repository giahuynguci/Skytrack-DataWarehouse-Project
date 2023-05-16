CREATE TABLE [stg].[staging_seat]
(
	[airline_name] [varchar](400) NULL,
	[link] [varchar](400) NULL,
	[title] [varchar](400) NULL,
	[author] [varchar](400) NULL,
	[author_country] [varchar](400) NULL,
	[review_date] [varchar](400) NULL,
	[content] [text] NULL,
	[aircraft] [varchar](400) NULL,
	[seat_layout] [varchar](400) NULL,
	[date_flown] [varchar](400) NULL,
	[cabin_flown] [varchar](400) NULL,
	[type_traveller] [varchar](400) NULL,
	[overall_rating] [int] NULL,
	[seat_legroom_rating] [int] NULL,
	[seat_recline_rating] [int] NULL,
	[seat_width_rating] [int] NULL,
	[aisle_space_rating] [int] NULL,
	[viewing_tv_rating] [int] NULL,
	[power_supply_rating] [int] NULL,
	[seat_storage_rating] [int] NULL,
	[recommended] [int] NULL
)
