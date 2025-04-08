# Shark Tank SQL Analysis

## Project Overview

This project focuses on analyzing startup pitches, founder demographics, investment trends, and deal success rates using SQL. Using data from the Shark Tank dataset, the goal was to clean, transform, and extract actionable insights with SQL Server Management Studio (SSMS).

The project demonstrates practical use of SQL functions, data manipulation techniques, and analytical queries to explore patterns in startup funding and entrepreneurship.

## Key SQL Functions & Techniques Used
Aggregate Functions: COUNT(), SUM(), AVG(), MAX()

Conditional Logic: CASE WHEN

String Functions (if used in expansion): e.g., REPLACE(), TRIM() (add if applicable)

Mathematical Calculations: Ratios, averages, totals

Subqueries & Aliases: Nested queries for conditional counting and logic

Grouping & Sorting: GROUP BY, ORDER BY

Joins (if applicable from table2/table3 in future extensions)

Column Manipulation: ALTER TABLE, DROP COLUMN, sp_rename

Information Schema Queries: For metadata like column counts

## Tools & Technologies
SQL Server Management Studio (SSMS)

Structured Query Language (SQL)

Data Cleaning & Transformation Techniques

Database & Tables
Database Name: sharktank

## Tables:

table1: Main dataset with startup pitch details

table2, table3: Additional supporting data (prepared for extension)

## Data Cleaning & Preparation
Before running analysis:

Dropped Unnecessary Columns: Using ALTER TABLE ... DROP COLUMN

Renamed Columns: Improved readability with sp_rename

Standardized Data: Ensured consistency in column formats and values

## Key Business Insights
✅ Total Episodes
Used COUNT(ep) to determine how many episodes are represented.

✅ Total Pitches
Counted unique startup brands using COUNT(DISTINCT brand).

✅ Pitches Converted (Deals Closed)
Counted deals using COUNT(*) WHERE deal NOT IN ('No Deal')

OR applied CASE WHEN inside a subquery to sum up successful deals.

✅ Total Male & Female Founders
Used SUM(male) and SUM(female) to measure team composition.

✅ Gender Ratio
Calculated female-to-male founder ratio: SUM(female) / SUM(male)

✅ Average Equity Taken
Used AVG([equity taken %]) to find the mean equity percentage.

✅ Highest Deal Amount
Found max investment using MAX([amount invested lakhs]).

✅ Startups with at Least One Female Founder
Used conditional CASE WHEN female > 0 THEN 1 to flag female-led teams.

✅ Converted Pitches with at Least One Woman
Nested subqueries and conditions on both gender and funding fields to filter results.

✅ Average Team Size
Calculated via (SUM(male) + SUM(female)) / COUNT(ep)

✅ Age Group Distribution
Grouped and ranked AVG age values using GROUP BY and ORDER BY COUNT DESC


## How to Use
Import the dataset into your SQL database (sharktank).

Run the provided SQL queries to reproduce insights.

Modify or extend analysis for deeper business questions.
