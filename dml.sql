INSERT INTO customer(
    first_name,
    last_name,
    email
)VALUES(
    'Travii',
    'Peck',
    'traviicii@youknowwhere.com'
);

INSERT INTO customer(
    first_name,
    last_name,
    email
)VALUES(
    'Yve',
    'Bee',
    'yveb@yparsonsnewschool.com'
);

INSERT INTO customer (
    first_name, 
    last_name, 
    email, 
    member)
VALUES (
    'Steven', 
    'Aldridge', 
    'steviebb@hunterpr.com', 
    true
    );

SELECT *
FROM customer


DELETE FROM customer WHERE customer_id = 3;
DELETE FROM customer WHERE customer_id = 5;

INSERT INTO staff (
    first_name, 
    last_name, 
    email, 
    active,
    username,
    password
    )
VALUES (
    'Josh',
    'pixel',
    'joshpixel@dragqueen.com',
    true,
    'pixelwitch',
    'wickedmusical1'
    );

SELECT * FROM staff;

UPDATE staff
SET last_name = 'Pixel'
WHERE last_name = 'pixel';

INSERT INTO staff (
    first_name, 
    last_name, 
    email, 
    active,
    username,
    password
    )
VALUES (
    'Cameron',
    'Corrado',
    'camscum@treasureisland.com',
    true,
    'camscore',
    'DBD4Ever'
    );

INSERT INTO concession (
    product,
    product_id,
    product_description
    )
VALUES (
    'Skittles',
    1,
    'Delicious rainbow flavored little pebbles usually found at the end of a rainbow harvested and packaged just for you.'
    );

INSERT INTO concession (
    product,
    product_id,
    product_description
    )
VALUES (
    'Peanut M&Ms',
    2,
    'Fatty nuts covered in chocolate with a thin hard candy-like shell. '
    );

INSERT INTO concession (
    product,
    product_id,
    product_description
    )
VALUES (
    'Swedish Fish',
    3,
    'Candied fish from Norway, dont think too much about it!'
    );

SELECT * FROM concession;

INSERT INTO movies (
    title,
    description,
    release_year,
    movie_id
    )
VALUES (
    'Lord of the Rings: Two Towers - Extended Edition',
    'The second installation of one of the best film franchises in cinematic hostory.',
    '2001-8-20',
    001
);

INSERT INTO movies (
    title,
    description,
    release_year,
    movie_id
    )
VALUES (
    'Inception',
    'Topsy turvy dream exploration and exploitation',
    '2011-7-15',
    002
);

SELECT * FROM movies;

SELECT * FROM customer;
SELECT * FROM staff;

INSERT INTO purchases (
    customer_id,
    staff_id,
    amount
    )
VALUES (
    3,
    1,
    45.90
);

SELECT * FROM purchases;
SELECT * FROM movie_ticket;

INSERT INTO purchases (
    customer_id,
    product,
    staff_id,
    amount
    )
VALUES (
    2,
    'Skittles',
    2,
    5.99
);


