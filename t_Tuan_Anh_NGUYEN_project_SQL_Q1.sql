-- Výzkumná otázka č. 1
-- 1. Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

SELECT
	cpib.name,
	cp.payroll_year,
	avg(cp.value) AS average_value
FROM czechia_payroll AS cp
LEFT JOIN czechia_payroll_industry_branch AS cpib 
	ON cp.industry_branch_code = cpib.code 
	WHERE cp.value_type_code = "5958" AND cpib.name IS NOT NULL
GROUP BY cpib.name, cp.payroll_year;


