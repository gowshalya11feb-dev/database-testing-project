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

-- T9: Check that no payment has an empty amount
SELECT COUNT(*) FROM payment WHERE amount IS NULL;

-- T10: Check that film ratings only have valid values
SELECT COUNT(*) FROM film WHERE rating NOT IN ('G', 'PG', 'PG-13', 'R', 'NC-17');

SELECT customer.first_name, address.address
FROM customer
JOIN address ON customer.address_id = address.address_id
LIMIT 5;

-- T12: Check that every film has a matching language
SELECT COUNT(*)
FROM film
JOIN language ON film.language_id = language.language_id;

-- T13a: Count all payments
SELECT COUNT(*) FROM payment;

-- T13b: Count payments that matched a customer
SELECT COUNT(*)
FROM payment
JOIN customer ON payment.customer_id = customer.customer_id;

-- T14a: Count all inventory copies
SELECT COUNT(*) FROM inventory;

-- T14b: Count inventory copies that matched a film
SELECT COUNT(*)
FROM inventory
JOIN film ON inventory.film_id = film.film_id;

-- T15a: Count all rentals
SELECT COUNT(*) FROM rental;

-- T15b: Count rentals that matched a customer
SELECT COUNT(*)
FROM rental
JOIN customer ON rental.customer_id = customer.customer_id;

-- T16: Check that no rental has a return date before its rental date
SELECT COUNT(*) FROM rental WHERE return_date < rental_date;

-- T17: Check that no film has a replacement cost lower than its rental rate
SELECT COUNT(*) FROM film WHERE replacement_cost < rental_rate;

-- T18: Check that each payment belongs to the same customer as its rental
SELECT COUNT(*)
FROM payment
JOIN rental ON payment.rental_id = rental.rental_id
WHERE payment.customer_id <> rental.customer_id;

-- T19a: Count all rentals
SELECT COUNT(*) FROM rental;

-- T19b: Count rentals that matched an inventory item
SELECT COUNT(*)
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id;

-- T20: Check that no film has a length of zero or less
SELECT COUNT(*) FROM film WHERE length <= 0;