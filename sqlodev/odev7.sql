1)
SELECT rating, COUNT(*) FROM FILM
GROUP BY rating;

2)
SELECT replacement_cost, COUNT(*) FROM FILM
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

3)
SELECT store_id,  COUNT(DISTINCT customer) FROM customer
GROUP BY store_id;

4)
SELECT country_id, COUNT(city) FROM city
GROUP BY country_id
ORDER BY COUNT DESC
LIMIT 1;
