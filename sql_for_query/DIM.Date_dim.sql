SELECT 
	MAX([date]) AS max_date,
	MIN([date]) AS min_date
FROM [Test].[dbo].[vaccinations];


CREATE TABLE DIM.Date_dim (
	Date_key float,
	Date date,
	Day int,
	month int,
	month_name nvarchar(200),
	year int,
);



WITH DateRange AS (
    SELECT CAST('2020-12-02' AS DATE) AS DateValue
    UNION ALL
    SELECT DATEADD(DAY, 1, DateValue)
    FROM DateRange
    WHERE DateValue < '2024-08-14'
)
INSERT INTO DIM.Date_dim (Date)
SELECT DateValue
FROM DateRange
OPTION (MAXRECURSION 0);


UPDATE DIM.Date_dim
SET 
    Date_key = CONVERT(INT, CONVERT(VARCHAR, YEAR(Date)) + RIGHT('00' + CONVERT(VARCHAR, MONTH(Date)), 2) + RIGHT('00' + CONVERT(VARCHAR, DAY(Date)), 2)),
    Day = DAY(Date),
    Month = MONTH(Date),
    Month_name = DATENAME(MONTH, Date),
    Year = YEAR(Date);
