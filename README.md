# task4repo
# Task 4: Aggregate Functions and Grouping

## Objective:
To use SQL aggregate functions (`SUM`, `COUNT`, `AVG`, `MAX`, `MIN`) along with `GROUP BY` and `HAVING` to summarize and analyze data in the `customers` table.

## Tools Used:
- DB Browser for SQLite / MySQL Workbench
- PostgreSQL for SQL execution

## Table Structure:
**Table Name:** `customers`

| Column Name        | Data Type         | Description                  |
|--------------------|-------------------|------------------------------|
| customer_id        | INTEGER (Primary Key) | Unique customer identifier |
| customer_name      | VARCHAR(100)      | Name of the customer         |
| email              | VARCHAR(100)      | Email address                |
| phone              | VARCHAR(15)       | Phone number                 |
| address            | TEXT              | City of the customer         |
| age                | INTEGER           | Age of the customer          |
| coustomer_expen    | INTEGER           | Total expenditure by customer|

> Note: The column `coustomer_expen` was initially added as `VARCHAR(20)` and later converted to `INTEGER` using `ALTER TABLE`.

## SQL Queries Performed:

### 1. Add Column and Insert Data
```sql
ALTER TABLE customers ADD COLUMN coustomer_expen VARCHAR(20);
-- Updated values for coustomer_expen using UPDATE queries.

Convert Column to Integer Type
ALTER TABLE customers
ALTER COLUMN coustomer_expen TYPE INTEGER
USING coustomer_expen::integer;

. Basic Table View
SELECT * FROM customers;

Average Age of Customers
SELECT AVG(age) AS average_age FROM customers;

Count of Customers by City
SELECT address AS city, COUNT(*) AS customer_count
FROM customers
GROUP BY address;

Total Expenditure by City
SELECT address AS city, SUM(coustomer_expen) AS city_total_expenditure
FROM customers
GROUP BY address;

Filter Cities with Total Expenditure > 800
SELECT address AS city, SUM(coustomer_expen) AS city_total_expenditure
FROM customers
GROUP BY address
HAVING SUM(coustomer_expen) > 800;

Maximum and Minimum Customer Expenditure
SELECT MAX(coustomer_expen) AS max_expenditure,
       MIN(coustomer_expen) AS min_expenditure
FROM customers;

Outcome:
Successfully applied aggregate functions on customer data.

Grouped data using GROUP BY and filtered groups with HAVING.

Analyzed customer expenditure by city and summarized other useful statistics.

