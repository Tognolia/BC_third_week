use sakila;
#1
select first_name from actor where first_name = 'Scarlett';
#2
select count(film_id) as total_film from film;
select count(rental_id) as tot_rental from rental;
#3
select min(length) as min_duration from film;
select max(length) as min_duration from film;
#4
select left(avg(length/60),4) as time_hour from film;
#5 
select count(distinct last_name)from actor;
#6
select min(rental_date) from rental;
select datediff( max(rental_date),min(rental_date)  ) as total_op_days from rental;
#7
select *, date_format(convert(rental_date,datetime),'%a') as weekdays from rental;
#8
alter table rental
add week_day date;
insert into week_day values date_format(convert(rental_date,datetime),'%a');
#SELECT *,
#case
#when weekdays = ('Mon','Tue', 'Wed', 'Thu', 'Fri') then 'workday'
#else 'holiday'
#end as  'day_type';
#9
SELECT COUNT(RENTAL_ID) as total_rental from rental where date_format(convert(rental_date,datetime),'%b') = 'May'