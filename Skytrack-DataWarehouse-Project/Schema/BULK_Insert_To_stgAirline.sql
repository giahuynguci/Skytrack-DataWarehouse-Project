BULK INSERT [stg].[staging_airline]
FROM 'C:\Users\ADMIN\Desktop\Skytrack Dataset\airline_full\airline.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	DATAFILETYPE    = 'char', 
	FIELDTERMINATOR = ',', 
	ROWTERMINATOR   = '0x0D0A'
);