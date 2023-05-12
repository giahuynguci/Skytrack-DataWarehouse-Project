--stg.staging_airline
ALTER TABLE [stg].[staging_airline] ALTER COLUMN [review_date] DATE;

--stg.staging_airport
ALTER TABLE [stg].[staging_airport] ALTER COLUMN [review_date] DATE;

ALTER TABLE [stg].[staging_airport] ALTER COLUMN [date_visit] DATE;

--stg.staging_lounge
ALTER TABLE [stg].[staging_lounge] ALTER COLUMN [review_date] DATE;

ALTER TABLE [stg].[staging_lounge] ALTER COLUMN [date_visit] DATE;

UPDATE [stg].[staging_lounge] SET airport = LOWER(REPLACE(airoprt,' ','-'))

--stg.staging_seat
ALTER TABLE [stg].[staging_seat] ALTER COLUMN [review_date] DATE;

ALTER TABLE [stg].[staging_seat] ALTER COLUMN [date_flown] DATE;