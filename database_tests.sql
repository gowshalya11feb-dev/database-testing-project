USE sakila;
-- T1: Check the total number of customers
SELECT COUNT(*) FROM customer;

-- T2: Check that no customer has an empty first name
SELECT COUNT(*) FROM customer WHERE first_name IS NULL;

-- T3: Check that no email appears more than once
SELECT email, COUNT(*)
FROM customer
GROUP BY email
HAVING COUNT(*) > 1;

-- T4: Check that the active column only has 0 or 1
SELECT COUNT(*) FROM customer WHERE active NOT IN (0, 1);

-- T5: Check the total number of films
SELECT COUNT(*) FROM film;

-- T6: Check that no film has an empty title
SELECT COUNT(*) FROM film WHERE title IS NULL;

-- T7: Check that no payment amount is negative
SELECT COUNT(*) FROM payment WHERE amount < 0;

-- T8: Check that no film title appears more than once
SELECT title, COUNT(*)
FROM film
GROUP BY title
HAVING COUNT(*) > 1;