# Resource-Consumption-Analysis

## Contents
- [Overview](#overview)
- [Key Findings](#key-findings)
- [Project Structure](#project-structure)
- [Files and Folders](#files-and-folders)
- [Tools](#tools)
- [Getting Started](#getting-started)
- [Key Questions Addressed](#key-questions-addressed)
- [Key Performance Indicators (KPIs)](#key-performance-indicators-kpis)
- [Dashboard Visuals](#dashboard-visuals)
- [Insights for Action](#insights-for-action)


## Overview
Analyze gas, water, and electricity consumption across major U.S. cities using MySQL and Excel to uncover insights and optimize resource usage.

## Key Findings
- **Highest Consumption Building**: Building `B1006` consumed **20,105,096 units**, the highest across all utilities.
- **Seasonal Trends**: Energy consumption peaks in **December** (17.45M units) and dips in **August** (16.94M units).
- **Cost Distribution**: Electricity accounts for **$15.84M** (total cost), with gas and water contributing smaller shares.

## Project Structure
The project is organized into three main folders:

- **Data**: Contains raw CSV files with energy-related data.
- **SQL**: Includes SQL scripts used to analyze the data.
- **Visualization**: Holds the Excel dashboard with visualizations of key insights.

## Files and Folders

### 1.Data Schema
- **buildings.csv**:  
  `building_id` (e.g., B1009), `city`, `state`, `size_sqft`  
- **energy_consumptions.csv**:  
  `building_id`, `month`, `electricity_kWh`, `gas_therms`, `water_gallons`  
- **rates.csv**:  
  `utility_type`, `rate_per_unit`, `currency`  
### 2.SQL Folder
- **Energy Project SQL.sql**:  
  - Cleans and joins `buildings.csv`, `energy_consumptions.csv`, and `rates.csv`.  
  - Calculates total consumption/cost by building, city, and utility type.  
  - Identifies seasonal trends and outlier buildings.  

## Tools
- **MySQL**: Data Analysis
- **Excel**: Creating DashBoard

## Getting Started

This project contains data, an SQL script, and a dashboard. Follow the steps below to get started.

### Prerequisites:
- MySQL Server
- Excel (for dashboard)

### Setup:

1. **Download the SQL Script**:
   - [Energy Project SQL](./Energy_Project_SQL.sql): This SQL script contains the schema and data for the project.

## Key Questions Addressed:
1. What is the total energy consumption and cost across all utilities?
2. Which buildings or cities have the highest energy demand?
3. How do seasonal trends impact energy consumption and costs?
4. Are there opportunities to optimize energy usage and reduce costs?

## Key Performance Indicators (KPIs):
- **Total Consumption**: 210.47 M units  
  - Electricity: 108.06 M units  
  - Gas: 3.01 M units  
  - Water: 2.03 M units  
- **Total Cost**: $15.84M  
  - Electricity: $12.45M (78.6%)  
  - Gas: $2.31M (14.6%)  
  - Water: $1.08M (6.8%)  

## Dashboard Visuals
- **Consumption by Building**: Bar chart comparing buildings (B1009, B1007, etc.).  
- **Seasonal Trends**: Line graph showing monthly consumption/cost patterns.  
- **Cost Breakdown**: Pie chart of utility-type costs (Electricity, Gas, Water).  

## Insights for Action:
- Identify buildings or cities with high energy demand for targeted efficiency programs.
- Use seasonal trends to forecast future energy needs and costs.
- Optimize resource allocation during peak consumption months to reduce expenses.



  
