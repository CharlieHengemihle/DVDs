-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
select film.title, count(rental.inventory_id)
from inventory
left join film on inventory.film_id = film.film_id
left join rental on inventory.inventory_id = rental.inventory_id
group by film.film_id
order by count(rental.inventory_id) desc
limit 10