#1
SELECT 
    first_name, last_name, email, store_id
FROM
    staff;

#2
SELECT 
    store_id, COUNT(inventory_id) AS counts_of_inventory
FROM
    inventory
GROUP BY store_id;

#3
SELECT 
    store_id, COUNT(DISTINCT customer_id) AS active_customers
FROM
    customer
WHERE
    active = 1
GROUP BY store_id;

#4
SELECT 
    COUNT(DISTINCT email) AS num_of_email_addresses
FROM
    customer;

#5
SELECT 
    store_id, COUNT(DISTINCT film_id) AS count_of_unique_films
FROM
    inventory
GROUP BY store_id;

SELECT 
    COUNT(DISTINCT category_id) AS unique_categories
FROM
    category;

#6
SELECT 
    MIN(replacement_cost) AS least_expensive_replacement,
    MAX(replacement_cost) AS most_expensive_replacement,
    ROUND(AVG(replacement_cost), 2) AS avg_replacement_cost
FROM
    film;

#7
SELECT 
    ROUND(AVG(amount), 2) AS avg_payment,
    MAX(amount) AS max_payment
FROM
    payment;

#8
SELECT 
    customer_id, COUNT(rental_id) AS all_time_rentals
FROM
    rental
GROUP BY customer_id
ORDER BY COUNT(rental_id) DESC;