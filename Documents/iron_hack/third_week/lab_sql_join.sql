use sakila;
#1
select first_name, last_name, address from address a
join staff s
on a.address_id = s.address_id;
#2
select  p.payment_date, s.staff_id ,sum(amount) as tot_payment from staff s
join payment p
on s.staff_id = p.staff_id
group by s.staff_id
having p.payment_date like '%2006-08'
;
#3
select  f.film_id, count(actor_id)  from film f
join film_actor fa
on f.film_id = fa.film_id
group by f.film_id;
#4
select sum(amount) as tot_cus, c.customer_id, c.last_name from customer c
join payment p
on c.customer_id= p.customer_id
group by c.customer_id
order by c.last_name desc

