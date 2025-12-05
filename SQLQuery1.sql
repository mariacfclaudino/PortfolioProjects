--SELECT * 
--FROM PortifolioProject..CovidDeaths
--order by 3,4

--SELECT * 
--FROM PortifolioProject..CovidVaccinations$
--order by 3,4

--Select the data that will be used

Select Location, date, total_cases, new_cases, total_deaths, population
FROM PortifolioProject..CovidDeaths
order by 1, 2

-- Total cases vs Total deaths
Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercentage
FROM PortifolioProject..CovidDeaths
-- Where location like '%Brazil%'
order by 1, 2

-- Total cases vs Population
-- Shows what percentage of population infected with Covid
Select Location, date, total_cases, Population, (total_cases/population)*100 as DeathPercentage
FROM PortifolioProject..CovidDeaths
Where location like '%Brazil%'
order by 1, 2