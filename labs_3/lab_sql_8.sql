use sakila;
#1
select title, length , rank() over (order by length ) from film
where length <> ' '
;
#2
select rating, title, length , rank() over (partition by rating order by length desc) from film
;
#3 
select category_id,count(title) from film f
join film_category fc
on f.film_id = fc.film_id
group by category_id;
#4
select actor_id, count(film_id) as count_film from film_actor
group by actor_id
order by count_film desc
limit 1;
#5
select count(rental_id) as tot_rent, customer_id from payment
group by customer_id 
order by tot_rent desc
limit 1
