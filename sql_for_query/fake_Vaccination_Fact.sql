
CREATE TABLE vaccination_addvaccine_name (
    location VARCHAR(255),
    iso_code VARCHAR(10),
    date DATE,
    vaccine VARCHAR(255),
    total_vaccinations BIGINT,
    people_vaccinated BIGINT,
    people_fully_vaccinated BIGINT,
    total_boosters BIGINT,
    daily_vaccinations_raw BIGINT,
    daily_vaccinations BIGINT,
    total_vaccinations_per_hundred FLOAT,
    people_vaccinated_per_hundred FLOAT,
    people_fully_vaccinated_per_hundred FLOAT,
    total_boosters_per_hundred FLOAT,
    daily_vaccinations_per_million FLOAT,
    daily_people_vaccinated BIGINT,
    daily_people_vaccinated_per_hundred FLOAT
);


INSERT INTO vaccination_addvaccine_name (location, iso_code, date, vaccine, total_vaccinations, people_vaccinated, people_fully_vaccinated, total_boosters, daily_vaccinations_raw, daily_vaccinations, total_vaccinations_per_hundred, people_vaccinated_per_hundred, people_fully_vaccinated_per_hundred, total_boosters_per_hundred, daily_vaccinations_per_million, daily_people_vaccinated, daily_people_vaccinated_per_hundred)
SELECT 
    v.location,
    v.iso_code,
    v.date,
    vd.vaccine,
    v.total_vaccinations,
    v.people_vaccinated,
    v.people_fully_vaccinated,
    v.total_boosters,
    v.daily_vaccinations_raw,
    v.daily_vaccinations,
    v.total_vaccinations_per_hundred,
    v.people_vaccinated_per_hundred,
    v.people_fully_vaccinated_per_hundred,
    v.total_boosters_per_hundred,
    v.daily_vaccinations_per_million,
    v.daily_people_vaccinated,
    v.daily_people_vaccinated_per_hundred
FROM vaccinations v
JOIN [vaccinations-by-manufacturer] vd 
    ON v.location = vd.location 
    AND v.date = vd.date;




CREATE TABLE DIM.Vaccination_Fact (
    Date_key float,
    location_key int,
    vaccine_key VARCHAR(100),
    total_vaccinations BIGINT,
    people_vaccinated BIGINT,
    people_fully_vaccinated BIGINT,
    total_boosters BIGINT
);



INSERT INTO DIM.Vaccination_Fact 
    (Date_key, location_key, vaccine_key, total_vaccinations, people_vaccinated, people_fully_vaccinated, total_boosters)
SELECT 
    DD.Date_key,
    LD.location_key,
    VD.vaccine_key,  -- Assuming vaccine_key should come from the Vaccine_Dim table
    v.total_vaccinations,
    v.people_vaccinated,
    v.people_fully_vaccinated,
    v.total_boosters
FROM 
    vaccination_addvaccine_name v
JOIN 
    DIM.Date_dim DD ON v.date = DD.Date
JOIN 
    DIM.Location_Dim LD ON v.location = LD.location
JOIN 
    DIM.Vaccine_Dim VD ON v.vaccine = VD.vaccine_name;