CREATE PROCEDURE [dwh].[Insert_Into_Fact_Raing]
AS
    INSERT INTO [dwh].fact_rating(
			[passenger_id]
			,[airport_id]
			,[airline_id]
			,[aircraft_id]
			,[lounge_id]
			,[airport_visit_date]
			,[lounge_visit_date]
			,[flight_date]
			,[airline_review_date]
			,[airport_review_date]
			,[lounge_review_date]
			,[seat_review_date]
			,[airline_overall_rating]
			,[airline_seat_comfort_rating]
			,[airline_cabin_staff_rating]
			,[airline_food_beverages_rating]
			,[airline_inflight_entertainment_rating]
			,[airline_ground_service_rating]
			,[airline_wifi_connectivity_rating]
			,[airline_value_money_rating]
			,[airline_recommended]
			,[airport_overall_rating]
			,[airport_queuing_rating]
			,[airport_terminal_cleanness_rating]
			,[airport_terminal_seating_rating]
			,[airport_terminal_signs_rating]
			,[airport_food_beverages_rating]
			,[airport_shopping_rating]
			,[airport_wifi_connectivity_rating]
			,[airport_staff_rating]
			,[airport_recommended]
			,[lounge_overall_rating]
			,[lounge_comfort_rating]
			,[lounge_cleanness_rating]
			,[lounge_bar_beverages_rating]
			,[lounge_catering_rating]
			,[lounge_washrooms_rating]
			,[lounge_wifi_connectivity_rating]
			,[lounge_staff_service_rating]
			,[lounge_recommended]
			,[seat_overall_rating]
			,[seat_legroom_rating]
			,[seat_recline_rating]
			,[seat_width_rating]
			,[seat_aisle_space_rating]
			,[seat_viewing_tv_rating]
			,[seat_power_supply_rating]
			,[seat_storage_rating]
			,[seat_recommended]
			,[overall_rating]
			,[overall_recommendation])
----------------------------------------------------------
	SELECT		p.[Id_author]
           ,ap.[airport_id]
           ,al.[airline_id]
           ,ac.[aircraft_id]
           ,l.[lounge_id]
           ,sap.[date_visit] as airport_visit_date
           ,sl.[date_visit] as lounge_visit_date
           ,ss.[date_flown] as flight_date
			,sal.[review_date] as airline_review_date
           ,sap.[review_date] as airport_review_date
           ,sl.[review_date] as lounge_review_date
           ,ss.[review_date] as seat_review_date
           ,sal.[overall_rating] as airline_overall_rating
           ,sal.[seat_comfort_rating] as airline_seat_comfort_rating
           ,sal.[cabin_staff_rating] as airline_cabin_staff_rating
           ,sal.[food_beverages_rating] as airline_food_beverages_rating
           ,sal.[inflight_entertainment_rating] as airline_inflight_entertainment_rating
           ,sal.[ground_service_rating] as airline_ground_service_rating
           ,sal.[wifi_connectivity_rating] as airline_wifi_connectivity_rating
           ,sal.[value_money_rating] as airline_value_money_rating
           ,sal.[recommended] as airline_recommended
           ,sap.[overall_rating] as airport_overall_rating
           ,sap.[queuing_rating] as airport_queuing_rating
           ,sap.[terminal_cleanliness_rating] as airport_terminal_cleanness_rating
           ,sap.[terminal_seating_rating] as airport_terminal_seating_rating
           ,sap.[terminal_signs_rating] as airport_terminal_signs_rating
           ,sap.[food_beverages_rating] as airport_food_beverages_rating
           ,sap.[airport_shopping_rating] as airport_shopping_rating
           ,sap.[wifi_connectivity_rating] as airport_wifi_connectivity_rating
           ,sap.[airport_staff_rating] as airport_staff_rating
           ,sap.[recommended] as airport_recommended
           ,sl.[overall_rating] as lounge_overall_rating
           ,sl.[comfort_rating] as lounge_comfort_rating
           ,sl.[cleanliness_rating] as lounge_cleanness_rating
		   ,sl.[bar_beverages_rating] as lounge_bar_beverages_rating
		   ,sl.[catering_rating] as lounge_catering_rating
           ,sl.[washrooms_rating] as lounge_washrooms_rating
           ,sl.[wifi_connectivity_rating] as lounge_wifi_connectivity_rating
           ,sl.[staff_service_rating] as lounge_staff_service_rating
           ,sl.[recommended] as lounge_recommended
           ,ss.[overall_rating] as seat_overall_rating
           ,ss.[seat_legroom_rating] as seat_legroom_rating
           ,ss.[seat_recline_rating] as seat_recline_rating
           ,ss.[seat_width_rating] as seat_width_rating
           ,ss.[aisle_space_rating] as seat_aisle_space_rating
           ,ss.[viewing_tv_rating] as seat_viewing_tv_rating
           ,ss.[power_supply_rating] as seat_power_supply_rating
           ,ss.[seat_storage_rating] as seat_storage_rating
           ,ss.[recommended] as seat_recommended
		   ,a.[overall_rating]
		   ,c.overall_recommendation  as overall_recommendation
FROM [stg].[staging_airline] as sal
LEFT JOIN [stg].[staging_airport] sap
		ON COALESCE(sap.author, 'Unknown') = COALESCE(sal.author, 'Unknown')
		AND COALESCE(sap.author_country, 'Unknown') = COALESCE(sal.author_country, 'Unknown')
		AND	COALESCE(sap.type_traveller, 'Unknown') = COALESCE(sal.type_traveller, 'Unknown')
LEFT JOIN [stg].[staging_lounge] sl
		ON COALESCE(sl.author, 'Unknown') = COALESCE(sal.author, 'Unknown')
		AND COALESCE(sl.author_country, 'Unknown') = COALESCE(sal.author_country, 'Unknown')
		AND	COALESCE(sl.type_traveller, 'Unknown') = COALESCE(sal.type_traveller, 'Unknown')
LEFT JOIN [stg].[staging_seat] ss
		ON COALESCE(ss.author, 'Unknown') = COALESCE(sal.author, 'Unknown')
		AND COALESCE(ss.author_country, 'Unknown') = COALESCE(sal.author_country, 'Unknown')
		AND	COALESCE(ss.type_traveller, 'Unknown') = COALESCE(sal.type_traveller, 'Unknown')
LEFT JOIN [dwh].[dim_passengers] p
		ON COALESCE(p.author, 'Unknown') =COALESCE(sal.author, 'Unknown')
LEFT JOIN [dwh].[dim_airports] ap
		ON COALESCE(sap.airport_name, 'Unknown') =COALESCE(ap.airport_name, 'Unknown')
		AND COALESCE(sap.link, 'Unknown') = COALESCE(ap.link, 'Unknown')
		AND	COALESCE(sap.experience_airport, 'Unknown') = COALESCE(ap.experience_airport, 'Unknown')
LEFT JOIN [dwh].[dim_airlines] al
		ON COALESCE(sal.airline_name, 'Unknown') = COALESCE(al.airline_name, 'Unknown')
		AND COALESCE(sal.link, 'Unknown') = COALESCE(al.link, 'Unknown')
		AND	COALESCE(sal.route, 'Unknown') = COALESCE(al.route, 'Unknown')
		AND	COALESCE(sal.cabin_flown, 'Unknown') = COALESCE(al.cabin_flown, 'Unknown')
LEFT JOIN [dwh].[dim_aircrafts] ac
		ON COALESCE(al.airline_id, '-1') = COALESCE(ac.airline_id, '-1')
		AND COALESCE(ss.aircraft, 'Unknown') = COALESCE(ac.aircraft, 'Unknown')
		AND	COALESCE(ss.seat_layout, 'Unknown') = COALESCE(ac.seat_layout, 'Unknown')
LEFT JOIN [dwh].[dim_lounges] l
		ON COALESCE(al.airline_id, '-1') = COALESCE(l.airline_id, '-1')
		AND COALESCE(ap.airport_id, '-1') = COALESCE(l.airport_id, '-1')
		AND	COALESCE(sl.lounge_name, 'Unknown') = COALESCE(l.lounge_name, 'Unknown')
		AND	COALESCE(sl.lounge_type, 'Unknown') = COALESCE(l.lounge_type, 'Unknown')
OUTER APPLY (
   SELECT AVG(Col) AS [overall_rating]
   FROM (VALUES
      (cast(sal.overall_rating as numeric(8,2))), (cast(sap.overall_rating as numeric(8,2))), (cast(sl.overall_rating as numeric(8,2))), (cast(ss.overall_rating as numeric(8,2)))
   ) v (Col)   
) a
OUTER APPLY (
   SELECT AVG(Col) AS [overall_recommendation]
   FROM (VALUES
      (cast(sal.recommended as numeric(4,2))), (cast(sap.recommended as numeric(4,2))), (cast(sl.recommended as numeric(4,2))), (cast(ss.recommended as numeric(4,2)))
   ) v (Col)   
) c
RETURN 0
