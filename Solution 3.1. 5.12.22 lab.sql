## Lab solution SQL 3.01 
## Activity 1
# 1  Drop column picture from staff.
# 2 A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update # the database accordingly.
# 3 pictureAdd rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You # # # # can use current date for the rental_date column in the rental table. Hint: Check the columns in # # # the table rental and see what information you would need to add there. You can query those # # # # pieces of information. For eg., you would notice that you need customer_id information as well. # # # To get that you can use the following query:
# # select customer_id from sakila.customer
# # where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
# # Use similar method to get inventory_id, film_id, and staff_id.
# # Activity 2
# # Use dbdiagram.io or draw.io to propose a new structure for the Sakila database.
# # Define primary keys and foreign keys for the new database.

# 1  Drop column picture from staff.

USE sakila;
ALTER TABLE staff
drop column picture;


# 2 A new person is hired to help Jon. Her name is TAMMY SANDERS, 
#and she is a customer. Update # the database accordingly.
SELECT *
FROM staff;

INSERT INTO staff(staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update) 
VALUES (3 ,'TAMMY' , 'SANDERS', 79, 'TAMMY.SANDERS@sakilacustomer.org' ,2 ,1 ,0 ,0 , 0);


# 3 Add rental for movie "Academy Dinosaur" by Charlotte Hunter 
#from Mike Hillyer at Store 1. You 
# can use current date for the rental_date column in the rental table. 
#Hint: Check the columns in 
#the table rental and see what information you would need to add there. 
#You can query those # # # # pieces of information. For eg., 
#you would notice that you need customer_id information as well. 
# To get that you can use the following query:
# select customer_id from sakila.customer
# where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
# Use similar method to get inventory_id, film_id, and staff_id.
SELECT *
FROM sakila.rental;

SELECT *
FROM sakila.film
WHERE title = 'Academy Dinosaur'; -- film_id is 1

SELECT *
FROM sakila.inventory
WHERE film_id = 1;

SELECT customer_id FROM sakila.customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';

SELECT *
FROM sakila.staff;

INSERT INTO sakila.rental(rental_date, inventory_id, customer_id, staff_id)
VALUES
('2021-08-23 00:00:00',4,130,1);

SELECT *
FROM sakila.rental
WHERE rental_date = '2021-08-23 18:40:46'
