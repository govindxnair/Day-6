Day 6  
A table named online_sales is created to store sales-related data, including transaction details, product info, and financial figures.
The LOAD DATA INFILE command is used to efficiently load data from a CSV file into the table, handling field delimiters, enclosures, and skipping the header row.
The EXTRACT() function is used in both queries to retrieve the year and month from the Date field, enabling time-based analysis.
The first query calculates monthly revenue using SUM(Total Revenue) and also measures sales volume with COUNT(DISTINCT Transaction ID).
Results are grouped by year and month and ordered chronologically to visualize revenue trends over time.
The second query identifies the top 3 months with the highest revenue by ordering the grouped revenue data in descending order and using LIMIT 3.
