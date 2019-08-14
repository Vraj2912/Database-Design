
-- 1.) How many customers does the store have?

SELECT COUNT(user_id) AS NumberOfUsers FROM user;

-- 2.) The top sold products and least sold products over time.

-- Least sold product
SELECT product_title, COUNT(o.order_id) AS sales
FROM product p JOIN order_has_product o
ON p.product_id = o.product_id
GROUP BY p.product_title 
ORDER BY sales LIMIT 1; 

-- Top sold product
SELECT product_title, COUNT(o.order_id) AS sales
FROM product p JOIN order_has_product o
ON p.product_id = o.product_id
GROUP BY p.product_title 
ORDER BY sales DESC LIMIT 1; 

-- 3.)The average price of products in the same category (for example, rock, pop, country, hip-hop).

SELECT AVG(p.product_price) AS Average , pt.name
FROM product p JOIN product_type pt ON p.product_type_id = pt.product_type_id
GROUP BY pt.name;

-- 4.)List clients by city and then sort them.

SELECT a.city, CONCAT(first_name,' ', last_name) AS FullName
FROM user u JOIN address a
ON u.user_id = a.user_id
ORDER BY city,FullName;

--  5.) 

SELECT * FROM 'order' JOIN order_has_product op USING (order_id)
WHERE MONTH(order_date) - MONTH(NOW())  = 1
GROUP BY op.user_id
HAVING COUNT (op.product_id) > 1;

-- 6.)List how many distinct albums each singer has.

SELECT CONCAT(first_name,' ', last_name) AS ArtistName, COUNT(ac.product_id) AS numberOfAlbums
FROM artist a JOIN artist_credit ac
ON a.artist_id = ac. artist_id
GROUP BY ac.product_id;

-- 7.) It does not apply to our database since it is online store and do not stock products.



