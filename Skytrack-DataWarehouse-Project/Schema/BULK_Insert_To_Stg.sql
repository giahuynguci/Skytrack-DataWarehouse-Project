BULK INSERT [stg].[staging_airline]
FROM 'C:\Users\ADMIN\Desktop\Skytrack Dataset\airline_full\airline.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	DATAFILETYPE    = 'char', 
	FIELDTERMINATOR = ',', 
	ROWTERMINATOR   = '0x0D0A'
);
----------------------------------------------------------
BULK INSERT [stg].[staging_airport]
FROM 'C:\Users\ADMIN\Desktop\Skytrack Dataset\airport\airport.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	DATAFILETYPE    = 'char', 
	FIELDTERMINATOR = ',', 
	ROWTERMINATOR   = '0x0D0A'
);
----------------------------------------------------------
BULK INSERT [stg].[staging_lounge]
FROM 'C:\Users\ADMIN\Desktop\Skytrack Dataset\lounge\lounge.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	DATAFILETYPE    = 'char', 
	FIELDTERMINATOR = ',', 
	ROWTERMINATOR   = '0x0D0A'
);
----------------------------------------------------------
BULK INSERT [stg].[staging_seat]
FROM 'C:\Users\ADMIN\Desktop\Skytrack Dataset\seat\seat.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	DATAFILETYPE    = 'char', 
	FIELDTERMINATOR = ',', 
	ROWTERMINATOR   = '0x0D0A'
);