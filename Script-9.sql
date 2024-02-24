--1. How many actors are there with the last name 'Wahlberg'?
select ACTOR_ID 
from actor
where last_name like 'Wahlberg';
--Answer = 2

--2. How many payments were made between $3.99 and $5.99?
select customer_id, amount 
from payment
where amount > 3.99 and amount <5.99
order by amount desc;
--Answer: 3431

--3. What film does the store have the most of? (search in inventory)
select film_id , count(film_id)
from inventory
group by film_id
order by count desc;
--Answer film_id

--4. How many customers have the last name 'William'?
select first_name , count(first_name)
from customer
where first_name like 'William'
group by first_name 
order by count desc;
--Answer = 0

--5. What store employee (get the id) sold the most rentals?
select staff_id, count(staff_id)
from rental
group by staff_id 
order by count desc;
--Answer: staff_id number 1 sold the most rentals

--6. How many district names are there?
select count(distinct district)  
from address;
--Answer: The total number of different district names is 378.

--7. What film has the most actors in it?
select film_id , count(actor_id)
from film_actor
group by film_id
order by count desc;
--Answer: film_id 508 has the most actors in it.

--8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
select last_name, count(last_name)
from customer
where last_name like '%es'
group by last_name;
--Answer: 


--9. How many payment amounts(4.99,5.99, etc.) had a number or rentals above 250 for customers with
--id's between 380 and 430? (use group by and having > 250)
select amount, count(distinct amount)
from payment
where customer_id >= 380 and customer_id <= 430
group by amount;

select * from payment;




