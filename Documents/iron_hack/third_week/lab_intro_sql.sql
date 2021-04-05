use sakila;
select * from staff ;
#3 
select distinct f.title from film as f;
#4 
select * from language ;
select count(film_id) as total from film;
select count(staff_id) as total staff from staff;
select count(store_id) as total_store from store;
#5
select first_name as f_name from staff;
#6
select distinct rental_date from rental;


