CREATE TABLE DIM.Location_Dim (
	location_key INT IDENTITY(1,1) PRIMARY KEY,
	location nvarchar(50),
	iso_code nvarchar(50),
	continent nvarchar(200),
	population float
);


INSERT INTO DIM.Location_Dim(location,iso_code)
SELECT location,iso_code 
FROM [Test].[dbo].[locations]


UPDATE DIM.Location_Dim
SET 
    DIM.Location_Dim.continent = countries_world.Region,
    DIM.Location_Dim.population = countries_world.Population
FROM DIM.Location_Dim
JOIN countries_world
    ON DIM.Location_Dim.location = countries_world.Country;

