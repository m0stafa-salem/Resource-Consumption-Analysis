SELECT 
  ec.Date AS Date, 
  ec.Building,
  b.City,
  'Water' AS Energy_Type,
  SUM(ec.`Water Consumption`) AS Total_Consumption,
  SUM(ec.`Water Consumption` * r.`Price Per Unit`) AS Total_Cost
FROM energy_consumptions ec
JOIN buildings b ON ec.Building = b.Building
LEFT JOIN rates r 
  ON EXTRACT(YEAR FROM ec.Date) = r.Year 
  AND r.`Energy Type` = 'Water'
GROUP BY 
  ec.Date, 
  ec.Building,
  b.City,
  Energy_Type

UNION ALL

SELECT 
  ec.Date AS Date, 
  ec.Building,
  b.City,
  'Electricity' AS Energy_Type,
  SUM(ec.`Electricity Consumption`) AS Total_Consumption,
  SUM(ec.`Electricity Consumption` * r.`Price Per Unit`) AS Total_Cost
FROM energy_consumptions ec
JOIN buildings b ON ec.Building = b.Building
LEFT JOIN rates r 
  ON EXTRACT(YEAR FROM ec.Date) = r.Year 
  AND r.`Energy Type` = 'Electricity'
GROUP BY 
  ec.Date, 
  ec.Building,
  b.City,
  Energy_Type

UNION ALL

SELECT 
  ec.Date AS Date, 
  ec.Building,
  b.City,
  'Gas' AS Energy_Type,
  SUM(ec.`Gas Consumption`) AS Total_Consumption,
  SUM(ec.`Gas Consumption` * r.`Price Per Unit`) AS Total_Cost
FROM energy_consumptions ec
JOIN buildings b ON ec.Building = b.Building
LEFT JOIN rates r 
  ON EXTRACT(YEAR FROM ec.Date) = r.Year 
  AND r.`Energy Type` = 'Gas'
GROUP BY 
  ec.Date, 
  ec.Building,
  b.City,
  Energy_Type;