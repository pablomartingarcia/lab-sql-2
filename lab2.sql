-- 1.
select * from actor
where first_name = 'Scarlett';

-- 2.
select * from actor
where last_name = 'Johansson';

-- 3.
select count(distinct film_id) from inventory; -- 958
/* select count(*) as num_films
from film;*/

-- 4.
select count(rental_id) from rental; -- 16044
/*select count(distinct film_id) as num_rented_films
from rental; */

-- 5. 
select max(rental_duration) from film; -- 7
select min(rental_duration) from film; -- 3

-- 6.
select max(length) as max_duration from film; -- 185
select min(length) as min_duration from film; -- 46

-- 7.
select floor(avg(length)) as avg_duration from film; -- 115

-- 8.
select concat(floor(avg(length)/60), ' hour ', floor(avg(length)%60), ' minutes') 
as avg_duration from film;

-- 9.
select count(film_id) as large_movies from film
where length>180; -- 39

-- 10.
select concat(first_name, ' ', last_name, ' - ', email) as customer_info from customer;

-- 11.
select length from film
order by length(title) desc
limit 1;
