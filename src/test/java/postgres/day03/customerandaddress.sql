-- Create the address table with columns address_id, address, and phone
CREATE TABLE address(
    address_id INTEGER PRIMARY KEY,
    address VARCHAR(50) NOT NULL,
    phone INTEGER NOT NULL
);

-- Insert data into the address table
INSERT INTO address (address_id, address, phone) VALUES (5, '1913 Hanoi Way', 28303384);
INSERT INTO address (address_id, address, phone) VALUES (7, '692 Joliet Street', 44847719);
INSERT INTO address (address_id, address, phone) VALUES (8, '1566 Inegl Manor', 70581400);
INSERT INTO address (address_id, address, phone) VALUES (10, '1795 Santiago', 86045262);
INSERT INTO address (address_id, address, phone) VALUES (11, '900 Santiago', 16571220);

-- Create the customer table with columns customer_id, first_name, last_name, and address_id as a foreign key referencing the address table
CREATE TABLE customer(
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address_id INTEGER REFERENCES address(address_id)
);

-- Insert data into the customer table
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (1, 'Mary', 'Smith', 5);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (2, 'Patricia', 'Johnson', NULL);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (3, 'Linda', 'Williams', 7);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (4, 'Barbara', 'Jones', 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES (5, 'Elizabeth', 'Brown', NULL);

-- Commit the transaction
commit work;

