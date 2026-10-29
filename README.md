# Database Testing using MySQL (Sakila Database)

## Objective
To verify that the data stored in a MySQL database is accurate,
complete and consistent, by writing SQL queries and comparing
the results with the expected values.

## Tools Used
- MySQL Server
- MySQL Workbench
- SQL
- Sakila sample database

## What I Tested
- Row counts (customer and film tables)
- NULL values (first name, film title, payment amount)
- Duplicate values (customer emails, film titles)
- Valid values (active column, film rating)
- Invalid values (negative payment amounts)
- Table relationships using JOINs (customer-address, film-language,
  payment-customer, inventory-film, rental-customer, rental-inventory)
- Business rules (return date not before rental date, replacement
  cost not lower than rental rate, payment customer matches rental
  customer, film length greater than zero)

## Results Summary
Total test cases: 20
Passed: 20
Failed: 0

## Project Files
- database_tests.sql : all 20 SQL test queries
- test_cases.xlsx : test case document with expected and actual results
- screenshots/ : proof of each test execution

## How to Run
1. Install MySQL Server and MySQL Workbench
2. Load the Sakila database (sakila-schema.sql, then sakila-data.sql)
3. Open database_tests.sql in Workbench
4. Run each query and compare the result with the expected value