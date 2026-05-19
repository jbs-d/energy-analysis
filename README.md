# Dutch Electricity Consumption Analysis

This project explores electricity consumption patterns across Dutch cities to understand grid utilization, smart meter penetration, and demand distribution — relevant to energy transition planning.

SQL analysis of electricity consumption data from the Dutch grid operator Enexis (2019).

## Dataset
Source: [Kaggle – Energy consumption of the Netherlands](https://www.kaggle.com/datasets/lucabasa/dutch-energy)  
File: enexis_electricity_01012019.csv  
Rows: ~100,000 postal code level records  
License: CC BY-SA 4.0

## Questions Answered
1. Which cities have the most electricity connections?
2. Which cities have the highest average annual consumption per connection?
3. Which cities have the highest smart meter adoption rate?
4. Combined view: connections, consumption and smart meter rate for larger cities

## Key Findings

**Largest cities by number of connections:**
EINDHOVEN    112,253
GRONINGEN     99,112
TILBURG       89,739

**Highest average annual consumption (kWh):**
MASTENBROEK    25,563
WESTERHAAR     23,781
MAASTRICHT-AIRPORT  21,428

Small areas with high consumption likely reflect industrial or agricultural users — a distinct segment from residential smart meter rollouts.

**Smart meter adoption leaders:**
ZUIDVEEN    100%
URMOND       97%
GEFFEN       96%

## Tools
- SQL (SQLite3)
- DB Browser for SQLite

## How to Run
```bash
sqlite3 energy.db
.mode csv
.import data/enexis_electricity_01012019.csv electricity
.read queries/analysis.sql
```
