
BULK INSERT churn_data
FROM 'C:\TEMP\churn_limpio.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
