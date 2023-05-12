-- EXPLORING COVID_DEATH DATA

select * from [dbo].[Covid_Deaths]

-- FIRST 5 COLUMNS DOES NOT CONTAINS ANY NULL VALUES.


select * from [dbo].[Covid_Deaths] 
ORDER BY DATE DESC,[location]

SELECT [iso_code] FROM [dbo].[Covid_Deaths]
WHERE [iso_code] IS NULL OR [iso_code] = ' '

SELECT [continent] FROM [dbo].[Covid_Deaths]
WHERE [continent] IS NULL OR [continent] = ' '

SELECT [Date] FROM [dbo].[Covid_Deaths]
WHERE [Date] IS NULL OR [Date] = ' '

SELECT [population] FROM [dbo].[Covid_Deaths]
WHERE [population] = '0'

DELETE FROM [dbo].[Covid_Deaths]
WHERE [location] LIKE 'w%'

SELECT DISTINCT([location]), COUNT([location])--, [total_cases],[Date] 
FROM [dbo].[Covid_Deaths]
WHERE [total_cases] = '0'
GROUP BY [location]
ORDER BY 2 DESC,1

SELECT *
FROM [dbo].[Covid_Deaths]
WHERE [total_cases] = '0'
ORDER BY [location],[Date] DESC

ALTER TABLE [dbo].[Covid_Deaths] 
--DROP COLUMN [new_deaths_smoothed]
--DROP COLUMN [new_cases_smoothed_per_million]
DROP COLUMN [new_deaths_smoothed_per_million]

SELECT * FROM  [dbo].[Covid_Deaths]
ORDER BY [location],[Date]

ALTER TABLE [dbo].[Covid_Deaths] ALTER COLUMN [population] NUMERIC
ALTER TABLE [dbo].[Covid_Deaths] ALTER COLUMN [total_cases] INT
ALTER TABLE [dbo].[Covid_Deaths] ALTER COLUMN [new_cases] INT
ALTER TABLE [dbo].[Covid_Deaths] ALTER COLUMN [total_deaths] INT
ALTER TABLE [dbo].[Covid_Deaths] ALTER COLUMN [new_deaths] INT




-- EXPLORING COVID_VACCINATION DATA

ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [new_tests_smoothed]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [new_tests_smoothed_per_thousand]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [new_vaccinations_smoothed]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [new_vaccinations_smoothed_per_million]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [total_tests_per_thousand]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [new_tests_per_thousand]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [total_vaccinations_per_hundred]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [people_vaccinated_per_hundred]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [people_fully_vaccinated_per_hundred]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [stringency_index]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [population_density]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [extreme_poverty]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [hospital_beds_per_thousand]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [human_development_index]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [gdp_per_capita]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [cardiovasc_death_rate]
ALTER TABLE [dbo].[Covid_Vaccination] DROP COLUMN [diabetes_prevalence]

--RENAME COLUMN NAME
EXEC SP_RENAME 'Covid_Vaccination.total_vaccinations','DOSE_CMPT','COLUMN'
EXEC SP_RENAME 'Covid_Vaccination.people_vaccinated','1ST_DOSE_CMPT','COLUMN'
EXEC SP_RENAME 'Covid_Vaccination.people_fully_vaccinated','2ND_DOSE_CMPT','COLUMN'
EXEC sp_rename 'Covid_Vaccination.new_vaccinations','DOSE_PER_DAY','COLUMN'


SELECT DISTINCT([tests_units])
FROM [dbo].[Covid_Vaccination]

SELECT * FROM [dbo].[Covid_Vaccination]
WHERE [tests_units] = 'NA'


-- REPLACING NULLS WITH 'NA'
UPDATE [dbo].[Covid_Vaccination]
SET [tests_units] = 'NA'
WHERE [tests_units] = ' '

SELECT * FROM [dbo].[Covid_Vaccination]
WHERE [location] = 'INDIA'
SELECT 8398362 + 210292

ALTER TABLE [dbo].[Covid_Vaccination] ALTER COLUMN [DOSE_PER_DAY] INT
ALTER TABLE [dbo].[Covid_Vaccination] ALTER COLUMN [1ST_DOSE_CMPT] INT
ALTER TABLE [dbo].[Covid_Vaccination] ALTER COLUMN [2ND_DOSE_CMPT] INT
--ALTER TABLE [dbo].[Covid_Vaccination] ALTER COLUMN [new_vaccinations] INT
ALTER TABLE [dbo].[Covid_Vaccination] ALTER COLUMN [population] INT
ALTER TABLE [dbo].[Covid_Vaccination] ALTER COLUMN [new_tests] INT
ALTER TABLE [dbo].[Covid_Vaccination] ALTER COLUMN [total_tests] INT


SELECT * FROM [dbo].[Covid_Vaccination]
SELECT * FROM [dbo].[Covid_Deaths]

