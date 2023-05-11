BULK INSERT [stg].[staging_airport]
FROM 'C:\Users\ADMIN\Desktop\Skytrack Dataset\airport\airport.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	DATAFILETYPE    = 'char', 
	FIELDTERMINATOR = ',', 
	ROWTERMINATOR   = '0x0D0A'
);