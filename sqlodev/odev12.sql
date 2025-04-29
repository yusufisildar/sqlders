--1)
SELECT COUNT(*) FROM film
WHERE length >
(
SELECT AVG(length) FROM film
)

--2)
SELECT COUNT(*) FROM film
WHERE rental_rate = ANY
(
SELECT MAX(rental_rate) FROM film
)

--3)
SELECT * FROM film
WHERE rental_rate =
(
SELECT MIN(rental_rate) FROM film
)
AND replacement_cost =
(
SELECT MIN(replacement_cost) FROM film
)

--4)
SELECT customer.first_name, customer.last_name, book_count FROM customer
INNER JOIN 
(
SELECT customer_id, COUNT(*) AS book_count FROM payment
GROUP BY customer_id
ORDER BY book_count DESC
)
payment ON customer.customer_id = payment.customer_id
ORDER BY payment.book_count DESC
LIMIT 3;
