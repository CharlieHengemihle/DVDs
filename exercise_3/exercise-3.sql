-- find all film titles with the category Action
-- use a LEFT JOIN FROM film onto film_category
-- use LEFT JOIN FROM film_categor onto category
select film.title
FROM category 
left join film_category on category.category_id = film_category.category_id
left join film on film_category.film_id = film.film_id
WHERE category.name = 'Action'
