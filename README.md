# Dutch Electricity Consumption Analysis

SQL analysis of electricity consumption data from the Dutch grid operator Enexis (2019).

## Dataset
Source: [Kaggle – Energy consumption of the Netherlands](https://www.kaggle.com/datasets/lucabasa/dutch-energy)  
File: enexis_electricity_01012019.csv  
Rows: ~100,000 postal code level records

## Questions Answered

1. Which cities have the most electricity connections?
2. Which cities have the highest average annual consumption per connection?
3. Which cities have the highest smart meter adoption rate?
4. Combined view: connections, consumption and smart meter rate for larger cities

## Key Findings

- Eindhoven, Groningen and Tilburg are the largest cities by number of connections
- Small industrial areas like Mastenbroek and Westerhaar show the highest average consumption
- Zuidveen and Urmond lead in smart meter adoption (100% and 97%)

## Tools
- SQLite3
- DB Browser for SQLite

## How to Run
```bash
sqlite3 energy.db
.mode csv
.import data/enexis_electricity_01012019.csv electricity
.read queries/analysis.sql
```
