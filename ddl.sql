CREATE TABLE customer(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50),
  email VARCHAR(100),
  member BOOLEAN DEFAULT false
);


CREATE TABLE concession(
  product VARCHAR(50) PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  product_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE movies(
  title VARCHAR(100) PRIMARY KEY,
  description VARCHAR(500),
  release_year DATE,
  movie_id INTEGER
);


CREATE TABLE staff(
  staff_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  active BOOLEAN,
  username VARCHAR(30),
  password VARCHAR(30)
);


CREATE TABLE purchases(
  purchase_id SERIAL PRIMARY KEY,
  customer_id SERIAL,
  product VARCHAR(50),
  staff_id INTEGER,
  amount NUMERIC(5,2),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
  FOREIGN KEY (product) REFERENCES concession(product) ON DELETE CASCADE,
  FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE movie_ticket(
  ticket_id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  theatre_num INTEGER,
  purchase_id INTEGER,
  FOREIGN KEY (title) REFERENCES movies(title),
  FOREIGN KEY (purchase_id) REFERENCES purchases(purchase_id)
);


ALTER TABLE concession
DROP COLUMN customer_id;

ALTER TABLE concession
ADD COLUMN product_description VARCHAR(500);


