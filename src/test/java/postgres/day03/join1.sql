-- Retrieve all data from the customer table
SELECT * FROM customer;

-- Retrieve all data from the address table
SELECT * FROM address;

-- Perform an inner join to get the first name, last name, address, and phone number of customers with matching address IDs
SELECT first_name, last_name, address, phone
FROM customer
JOIN address ON customer.address_id = address.address_id;

-- Perform a left join to get the first name, last name, address, and phone number of all customers, including those without matching address IDs
SELECT first_name, last_name, c.address_id, address, phone
FROM customer c
LEFT JOIN address a ON c.address_id = a.address_id;

-- Perform a right join to get the first name, last name, address, and phone number of all addresses, including those without matching customer IDs
SELECT first_name, last_name, c.address_id, a.address_id, address, phone
FROM customer c
RIGHT JOIN address a ON c.address_id = a.address_id;

-- Perform a full outer join to get the first name, last name, address, and phone number of all customers and addresses, including those without matching IDs
SELECT first_name, last_name, c.address_id, a.address_id, address, phone
FROM customer c
FULL JOIN address a ON c.address_id = a.address_id;
