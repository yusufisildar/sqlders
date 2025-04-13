--1)
(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
UNION
(
SELECT first_name FROM customer
ORDER BY first_name ASC
)

--2)
(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
INTERSECT
(
SELECT first_name FROM customer
ORDER BY first_name ASC
)

--3)
(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
EXCEPT
(
SELECT first_name FROM customer
ORDER BY first_name ASC
)

--4)
(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
UNION ALL
(
SELECT first_name FROM customer
ORDER BY first_name ASC
)


(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
INTERSECT ALL
(
SELECT first_name FROM customer
ORDER BY first_name ASC
)


(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
EXCEPT ALL
(
SELECT first_name FROM customer
ORDER BY first_name ASC
)
