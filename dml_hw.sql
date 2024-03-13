DELETE FROM customer
WHERE customer_id in (
                    SELECT max (customer_id)
                    FROM customer
                    GROUP BY customer_name
                    HAVING count(*) > 1)

INSERT INTO customer(
    customer_name,
    phone,
    email,
    age,
    VIP
) VALUES (
'Smith',
'(972)083-4974',
'Smithy@CT.com',
29,
'true'
),
(
  'Mary',
  '(635)4635414',
'MaryLamb@CT.com',
34,
'true'
);

DELETE FROM customer WHERE customer_name='Mary';

INSERT INTO sale(
    customer_id,
    amount
) VALUES (
    2,
    400
);

INSERT INTO concession(
    sale_id,
    price,
    concession_name,
    concession_desc
) VALUES (
    2,
    120,
    'Family Candy Bundle',
    'Delicious candy for everyone!'
)

INSERT INTO movie(
    ticket_id,
    movie_title,
    movie_genre
) VALUES (
    1,
    'Romantic Cheese',
    'Romantic Comedy'
)

INSERT INTO ticket (
    ticket_id,
    sale_id,
    price,
    class
) VALUES (
    1, 
    2,
    8.99,
    "Luxury"
 );