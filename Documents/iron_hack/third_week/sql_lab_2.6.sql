use sakila;
select * from film;
select release_year from film;
#2
SELECT * FROM film
WHERE title like 'armageddo%';
#3
SELECT * FROM film
WHERE title like '%apollo';
#4
select * from film
order by length desc
 limit 10;
 #5
 select count(film_id) as tot_movie_extras from film where special_features like '%Behind the Scenes';
 #6
 ALTER TABLE staff DROP picture;
 select * from staff;
 #7
INSERT INTO staff (staff_id, first_name, last_name, address_id, store_id, username, password)
VALUES (3, 'Tammy', 'Sanders', 5, 2,'tammy', 'skjfifdiabsifasvifb' );
#8
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select film_id from film
where title like 'Academy%';

select * from inventory
where film_id = 1;


select * from rental;
INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES (1999, '2015-05-31 00:46:31', 3, 130, '2015-06-31 00:46:31,1', '2015-05-31 00:46:31');