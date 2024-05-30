-- Create address table
CREATE TABLE address (
    address_id INTEGER PRIMARY KEY,
    address VARCHAR(50) NOT NULL,
    phone INTEGER NOT NULL
);

-- Insert data into address table
INSERT INTO address (address_id, address, phone) VALUES
    (5, '1913 Hanoi Way', 28303384),
    (7, '692 Joliet Street', 44847719),
    (8, '1566 Inegl Manor', 70581400),
    (10, '1795 Santiago', 86045262),
    (11, '900 Santiago', 16571220);

-- Create customer table
CREATE TABLE customer (
    customer_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address_id INTEGER REFERENCES address(address_id)
);

-- Insert data into customer table
INSERT INTO customer (customer_id, first_name, last_name, address_id) VALUES
    (1, 'Mary', 'Smith', 5),
    (2, 'Patricia', 'Johnson', NULL), -- Corrected NULL value
    (3, 'Linda', 'Williams', 7),
    (4, 'Barbara', 'Jones', 8),
    (5, 'Elizabeth', 'Brown', NULL); -- Corrected NULL value

-- Commit the changes
COMMIT;
