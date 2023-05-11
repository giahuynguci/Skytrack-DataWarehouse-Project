BULK INSERT [stg].[staging_seat]
FROM 'C:\Users\ADMIN\Desktop\Skytrack Dataset\seat\seat.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	DATAFILETYPE    = 'char', 
	FIELDTERMINATOR = ',', 
	ROWTERMINATOR   = '0x0D0A'
);