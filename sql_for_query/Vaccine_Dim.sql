CREATE TABLE DIM.Vaccine_Dim (
	vaccine_key VARCHAR(100),
	vaccine_name VARCHAR(100),
	manufacturer VARCHAR(100),
    vaccine_type VARCHAR(255),
);


INSERT INTO DIM.Vaccine_Dim (vaccine_name)
SELECT distinct
    vaccine
FROM [vaccinations-by-manufacturer]


UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC001',
    DIM.Vaccine_Dim.manufacturer = 'Sanofi and GlaxoSmithKline (GSK)',
    DIM.Vaccine_Dim.vaccine_type = 'Protein Subunit'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Sanofi/GSK';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC002',
    DIM.Vaccine_Dim.manufacturer = 'China National Pharmaceutical Group (Sinopharm)',
    DIM.Vaccine_Dim.vaccine_type = 'Inactivated Virus'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Sinopharm/Beijing';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC003',
    DIM.Vaccine_Dim.manufacturer = 'University of Oxford and AstraZeneca',
    DIM.Vaccine_Dim.vaccine_type = 'Viral Vector (Adenovirus)'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Oxford/AstraZeneca';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC004',
    DIM.Vaccine_Dim.manufacturer = 'SK Bioscience',
    DIM.Vaccine_Dim.vaccine_type = 'Protein Subunit'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'SKYCovione';



UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC005',
    DIM.Vaccine_Dim.manufacturer = 'Johnson & Johnson_s Janssen Pharmaceuticals',
    DIM.Vaccine_Dim.vaccine_type = 'Viral Vector (Adenovirus)'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Johnson&Johnson';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC006',
    DIM.Vaccine_Dim.manufacturer = 'Gamaleya Research Institute',
    DIM.Vaccine_Dim.vaccine_type = 'Viral Vector (Adenovirus)'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Sputnik V';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC007',
    DIM.Vaccine_Dim.manufacturer = 'Valneva SE',
    DIM.Vaccine_Dim.vaccine_type = 'Inactivated Virus'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Valneva';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC008',
    DIM.Vaccine_Dim.manufacturer = 'Moderna, Inc.',
    DIM.Vaccine_Dim.vaccine_type = 'mRNA'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Moderna';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC009',
    DIM.Vaccine_Dim.manufacturer = 'Pfizer, Inc. and BioNTech SE',
    DIM.Vaccine_Dim.vaccine_type = 'mRNA'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Pfizer/BioNTech';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC010',
    DIM.Vaccine_Dim.manufacturer = 'Bharat Biotech',
    DIM.Vaccine_Dim.vaccine_type = 'Inactivated Virus'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Covaxin';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC011',
    DIM.Vaccine_Dim.manufacturer = 'Sinovac Biotech',
    DIM.Vaccine_Dim.vaccine_type = 'Inactivated Virus'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Sinovac';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC012',
    DIM.Vaccine_Dim.manufacturer = 'Gamaleya Research Institute',
    DIM.Vaccine_Dim.vaccine_type = 'Viral Vector (Adenovirus)'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Sputnik Light';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC013',
    DIM.Vaccine_Dim.manufacturer = 'Medicago Inc.',
    DIM.Vaccine_Dim.vaccine_type = 'Virus-Like Particle'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Medicago';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC014',
    DIM.Vaccine_Dim.manufacturer = 'Novavax, Inc.',
    DIM.Vaccine_Dim.vaccine_type = 'Protein Subunit'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'Novavax';

UPDATE DIM.Vaccine_Dim
SET 
    DIM.Vaccine_Dim.vaccine_key = 'VAC015',
    DIM.Vaccine_Dim.manufacturer = 'CanSino Biologics',
    DIM.Vaccine_Dim.vaccine_type = 'Viral Vector (Adenovirus)'
FROM DIM.Vaccine_Dim
WHERE DIM.Vaccine_Dim.vaccine_name = 'CanSino';