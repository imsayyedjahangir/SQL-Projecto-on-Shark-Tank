## Shark Tank SQL Analysis

### Project Overview

This project aims to analyze startup pitches, investments, gender distribution, and funding trends from the Shark Tank dataset using SQL. It includes data cleaning, transformation, and insightful queries to explore key metrics such as total pitches, successful deals, gender ratio, highest investment, and average equity taken.

### Tools & Technologies

SQL Server Management Studio (SSMS)

Structured Query Language (SQL)

Data Cleaning & Transformation Techniques

Database & Tables

Database Name: sharktank

The dataset consists of multiple tables, including:

### table1: Main dataset containing startup pitch details

### table2 & table3: Additional supporting datasets

## Data Cleaning & Preparation

Before performing analysis, data cleaning steps were taken:

Unnecessary Columns Removed: Certain columns were dropped to retain only relevant information.

Column Renaming: Some column names were changed for better readability and consistency.

## Key Insights

### Total Episodes

The total number of episodes in the dataset was calculated to understand the overall span of the data.

### Total Pitches

This metric provides the count of unique startup brands that pitched their ideas on the show.

### Pitches Converted (Deals Closed)

A count of the number of startups that successfully secured a deal, excluding those that received no investment.

### Total Male Founders & Total Female Founders

Analyzed the total number of male and female entrepreneurs who pitched their startups.

### Gender Ratio

A calculation of the female-to-male ratio among startup founders to analyze diversity in entrepreneurship.

### Average Equity Taken

Determined the average percentage of equity taken by investors in successful deals.

### Highest Deal Amount

Identified the highest investment amount received by a startup in the dataset.

### Startups with at Least One Female Founder

Counted the number of startups that had at least one female team member.

### Pitches Converted with at Least One Woman

Filtered successful deals where at least one female entrepreneur was involved.

### Average Team Size

Calculated the average number of team members (male + female) per startup pitch.

### Age Group Distribution

Ranked different age groups of entrepreneurs from highest to lowest based on the number of pitches.

## Preview
![image](https://github.com/user-attachments/assets/a23fc625-2f33-4057-af20-3054932aedbf)


## How to Use

Import the dataset into the SQL database.

Run the provided SQL queries to generate insights.

Modify or extend the analysis based on business requirements.
