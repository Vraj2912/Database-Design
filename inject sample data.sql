USE `music_store_db`;

INSERT INTO `language` (name) VALUES 
    ('Albanian'),
	('Farsi'),
	('Hindi'),
	('KoreaN')	,
	('Polish'),
	('Spanish'),
	('Arabic'),
	('French'),
	('Hmon'),
	('Laotian'),
	('Portuguese'),
	('Tagalo'),
	('Armenian'),
	('German'),
	('Italian'),
	('Lithuania'),
	('Punjabi	Tha'),
	('Bengali'),
	('Greek'),
	('Japanese'),
	('Malay'),
	('Romanian'),
	('Turkis'),
	('Burmese'),
	('Haitian'),
	('Creole'),
	('Karen'),
	('Mandarin'),
	('Russian'),
	('Vietnamese'),
	('Cantonese'),
	('Hebrew'),
	('Khmer'),
	('Nepali'),
	('Somal');

INSERT INTO `gender` (name) VALUES 
	('male'), 
	('female');

INSERT INTO `country` (name) VALUES 
	('United State'), 
	('Canada');

INSERT INTO `role` (role_name) VALUES 
	('user'), 
    ('admin');

INSERT INTO `genre` (name) VALUES 
	('Alternative Music'),
	('Blues'),
	('Classical Music'),
	('Country Music'),
	('Dance Music'),
	('Easy Listening'),
	('Electronic Music'),
	('European Music (Folk / Pop)'),
	('Hip Hop / Rap'),
	('Indie Pop'),
	('Inspirational (incl. Gospel)'),
	('Asian Pop (J-Pop, K-pop)'),
	('Jazz'),
	('Latin Music'),
	('New Age'),
	('Opera'),
	('Pop (Popular music)'),
	('R&B / Soul'),
	('Reggae'),
	('Rock'),
	('Singer / Songwriter (inc. Folk)'),
	('World Music / Beats');

INSERT INTO `payment_method` (name) VALUES 
	('Visa'), 
	('MasterCard');

INSERT INTO `product_type` (name) VALUES 
	('Single'), 
	('Album');

INSERT INTO `product` (product_title, product_alias, product_cover_link, product_published_date, product_price, product_discount, language_id, product_type_id) VALUES
	('Frostbite', 'frostbite', 'frostbite.jpg', NOW(), 18, 2, 1, 1),
    ('Thank you, Next', 'thank-you-next', 'thank-you-next.jpg', NOW(), 13, 12, 2, 1),
    ('Waste It On Me', 'waste-it-on-me', 'waste-it-on-me.jpg', NOW(), 16, 18, 2, 1),
    ('Pop star', 'pop-star', 'pop-star.jpg', NOW(), 14, 22, 2, 1),
    ('Different world', 'different-world', 'different-world.jpg', NOW(), 12, 10, 2, 1),
    ('We don''t talk anymore', 'we-dont-talk-anymore', 'we-dont-talk-anymore.jpg', NOW(), 122, 11, 2, 2);

INSERT INTO `user` (email, password, first_name, last_name, phone, role_id, gender_id) VALUES
	('allan.sherwood@yahoo.com', '650215acec746f0e32bdfff387439eefc1358737', 'Allan', 'Sherwood', '201-653-4472', 1, 2),
	('barryz@gmail.com', '3f563468d42a448cb1e56924529f6e7bbe529cc7', 'Barry', 'Zimmer', '201-653-4472', 1, 1),
	('christineb@solarone.com', 'ed19f5c0833094026a2f1e9e6f08a35d26037066', 'Christine', 'Brown', '402-896-2576', 2, 1),
	('david.goldstein@hotmail.com', 'b444ac06613fc8d63795be9ad0beaf55011936ac', 'David', 'Goldstein', '503-654-1291', 1, 1),
	('erinv@gmail.com', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f', 'Erin', 'Valentino', '415-292-6651', 1, 2),
	('frankwilson@sbcglobal.net', '3ebfa301dc59196f18593c45e519287a23297589', 'Frank Lee', 'Wilson', '415-292-6651', 1, 1),
	('gary_hernandez@yahoo.com', '1ff2b3704aede04eecb51e50ca698efd50a1379b', 'Gary', 'Hernandez', '559-431-2398', 2, 2),
	('heatheresway@mac.com', '911ddc3b8f9a13b5499b6bc4638a2b4f3f68bf23', 'Heather', 'Esway', '303-912-3852', 2, 1);

INSERT INTO `state` (name, country_id) VALUES 
	('Ontario', 2),
    ('Quebec', 2),
    ('Vancouver', 2),
    ('Manitoba', 2),
	('California', 1),
    ('Texas', 1),
    ('Pennysivalia', 1);

INSERT INTO `artist` (first_name, last_name, alias, description, gender, nationality) VALUES
	('Charlie', 'Puth', 'charlie-puth', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1, 1),
    ('Selena', 'Gomez', 'selena-gomez', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 1),
    ('Chris', 'Medina', 'chris-medina', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 2, 1),
    ('Justin', 'Bieber', 'justin-bieber', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1, 2);
    
INSERT INTO `address` (user_id, street_1, street_2, city, postal_code, state_id, country_id) VALUES
	(1, '100 East Ridgewood Ave.', '', 'Paramus', '07652', 1 , 2),
	(1, '21 Rosewood Rd.', '', 'Woodcliff Lake', '07677', 2 , 2),
	(2, '16285 Wendell St.', '', 'Omaha', '68135', 3 , 2),
	(3, '19270 NW Cornell Rd.', '', 'Beaverton', '97006', 4 , 2),
	(4, '186 Vermont St.', 'Apt. 2', 'San Francisco', '94110', 5 , 1),
	(4, '1374 46th Ave.', '', 'San Francisco', '94129', 5, 1),
	(5, '6982 Palm Ave.', '', 'Fresno', '93711', 6, 1),
	(6, '23 Mountain View St.', '', 'Denver', '80208', 7, 1),
	(7, '7361 N. 41st St.', 'Apt. B', 'New York', '10012', 5, 1),
	(7, '3829 Broadway Ave.', 'Suite 2', 'New York', '10012', 2, 2),
	(8, '2381 Buena Vista St.', '', 'Los Angeles', '90023', 6, 1),
	(8, '291 W. Hollywood Blvd.', '', 'Los Angeles', '90024', 3, 2);

INSERT INTO `order` (order_code, order_date, order_discount_amount, order_total, payment_status, payment_name, payment_card_number, payment_method, user_id) VALUES
  ('NAS14', '2015-03-28 09:40:28', 326, 23687, 'APPROVED', 'ASD', '4111111111111111', 1, 1),
  ('NQW42', '2015-03-28 11:23:20', 879, 54513, 'APPROVED', 'WQRQ', '4012888888881881', 2, 2),
  ('NAF24', '2015-03-29 09:44:58', 564, 66546, 'APPROVED', 'VASV ASFAS', '4111111111111111', 1, 2),
  ('NWE23', '2015-03-30 15:22:31', 165, 98789, 'APPROVED', 'AFQ', '378282246310005', 2, 7),
  ('NTER2', '2015-03-31 05:43:11', 79, 89781, 'APPROVED', 'QTGWG', '4111111111111111', 2, 6),
  ('N5441', '2015-03-31 18:37:22', 61, 54566, 'APPROVED', 'VBER', '6011111111111117', 1, 3),
  ('NERH3', '2015-04-01 23:11:12', 498, 44968, 'APPROVED', 'YEWY', '4111111111111111', 2, 1),
  ('NLKM6', '2015-04-02 11:26:38', 165, 31323, 'APPROVED', 'QGvas', '5555555555554444',2, 5),
  ('NIUH5', '2015-04-03 12:22:31', 651, 46987, 'APPROVED', 'euyq', '4012888888881881', 1, 4);

INSERT INTO `product_genre` (product_id, genre_id) VALUES
  (1, 2),
  (1, 4),
  (2, 2),
  (3, 6),
  (4, 6), 
  (5, 8),
  (6, 10);

INSERT INTO `single_attribute` (single) VALUES
  (1),
  (2),
  (3),
  (4),
  (5);

INSERT INTO `album_attribute` (single_id, album_id) VALUES
  (1, 6),
  (3, 6),
  (4, 6);

INSERT INTO `artist_credit` (product_id, artist_id) VALUES
  (1, 1),
  (1, 3),
  (2, 4),
  (3, 2),
  (4, 2),
  (4, 1);
  
INSERT INTO `order_has_product` (product_id, order_id, user_id) VALUES
  (1, 1, 1),
  (1, 3, 2),
  (2, 4, 3),
  (3, 2, 5),
  (4, 2, 6),
  (4, 1, 8);