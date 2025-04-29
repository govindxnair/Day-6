CREATE TABLE online_sales (
    `Transaction ID` INT,
    `Date` DATE,
    `Product Category` VARCHAR(100),
    `Product Name` VARCHAR(100),
    `Units Sold` INT,
    `Unit Price` DECIMAL(10, 2),
    `Total Revenue` DECIMAL(10, 2),
    `Region` VARCHAR(50),
    `Payment Method` VARCHAR(50)
);

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Online Sales Data.csv"
INTO TABLE online_sales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT 
    EXTRACT(YEAR FROM `Date`) AS year,
    EXTRACT(MONTH FROM `Date`) AS month,
    SUM(`Total Revenue`) AS monthly_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;

SELECT 
    EXTRACT(YEAR FROM `Date`) AS year,
    EXTRACT(MONTH FROM `Date`) AS month,
    SUM(`Total Revenue`) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;