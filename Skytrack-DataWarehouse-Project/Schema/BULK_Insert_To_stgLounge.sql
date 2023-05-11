BULK INSERT [stg].[staging_lounge]
FROM 'C:\Users\ADMIN\Desktop\Skytrack Dataset\lounge\lounge.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	DATAFILETYPE    = 'char', 
	FIELDTERMINATOR = ',', 
	ROWTERMINATOR   = '0x0D0A'
);