-- Insert dummy data

-- Insert data into languages
INSERT INTO Airbnb.language (language) 
VALUES
('English'),
('Deutch'),
('Spanish'),
('Arabic'),
('French'),
('Korean'),
('japanese'),
('Italish'),
('korean'),
('Portuguese');


-- Insert data into Social Media
INSERT INTO Airbnb.social_media (social_media_id, facebook, instagram, twitter)
VALUES
('1',  'user_a', 'user_a', 'user1'),
('2',  'user_b', 'user_b', 'user2'),
('3',  'user_c', 'user_c', 'user_c'),
('4',  'user_d', 'user_d', 'user_d'),
('5',  'user_e', 'user_e', 'user_e'),
('6',  'user_f', 'user_f', 'user_f'),
('7',  'user_g', 'user_g', 'user_g'),
('8',  'user_h', 'user_h', 'user_h'),
('9',  'user_i', 'user_i', 'user_i'),
('10', 'user_j', 'user_j', 'user_j'),
('11', 'user_k', 'user_k', 'user_k'),
('12', 'user_l', 'user_l', 'user_l'),
('13', 'user_m', 'user_m', 'user_m'),
('14', 'user_n', 'user_n', 'user_n'),
('15', 'user_o', 'user_o', 'user_o'),
('16', 'user_p', 'user_p', 'user_p'),
('17', 'user_q', 'user_q', 'user_q'),
('18', 'user_r', 'user_r', 'user_r'),
('19', 'user_s', 'user_s', 'user_s'),
('20', 'user_t', 'user_t', 'user_t');


-- Insert data into User 
INSERT INTO Airbnb.user (user_id, first_name, last_name, gender, password, email, phone, user_type)
VALUES
(1,'John','Doe','male','abcd012','aa@example.org','1-123-4201-4201','h'),
(2,'Rita','Frazier','Female','abcd012','bb@example.net','1-123-4201-4201','g'),
(3,'Andrew','Good','male','abcd012','cc@example.org','1-123-4201-4201','g'),
(4,'John','Char','male','abcd012','dd@example.com','1-123-4201-4201','h'),
(5,'Julie','Salinas','Female','abcd012','ee@example.org','1-123-4201-4201','h'),
(6,'John','Steph','male','abcd012','ff@example.org','1-123-4201-4201','g'),
(7,'maria','Ith','Female','abcd012','gg@example.com','1-123-4201-4201','g'),
(8,'Heny','Jody','male','abcd012','hh@example.org','1-123-4201-4201','h'),
(9,'Sarah','Too','Femal','abcd012','ii@example.org','1-123-4201-4201','g'),
(10,'Bella','Lee','Femal','abcd012','jj@example.net','1-123-4201-4201','g'),
(11,'Adam','Efg','male','abcd012','kk@example.org','1-123-4201-4201','g'),
(12,'Emily','Ghk','Female','abcd012','ll@example.org','1-123-4201-4201','g'),
(13,'Dan','Ijk','male','abcd012','mm@example.net','1-123-4201-4201','h'),
(14,'luke','Lmn','male','abcd012','nn@example.org','1-123-4201-4201','g'),
(15,'Rose','Sky','Female','abcd012','oo@example.com','1-123-4201-4201','g'),
(16,'Una','Yong','Female','abcd012','pp@example.org','1-123-4201-4201','g'),
(17,'Noa','Nop','male','abcd012','qq@example.com','1-123-4201-4201','g'),
(18,'Sonia','Tuv','Female','abcd012','rr@example.net','1-123-4201-4201','g'),
(19,'Mary','Lily','Female','abcd012','ss@example.org','1-123-4201-4201','g'),
(20,'Neil','Pal','male','abcd012','tt@example.com','1-123-4201-4201','g'),
(21,'Sam','Bert','male','abcd012','uu@example.org','1-123-4201-4201','g'),
(22,'Tim','May','male','abcd012','vv@example.net','1-123-4201-4201','h'),
(23,'Leah','black','Female','abcd012','ww@example.org','1-123-4201-4201','g'),
(24,'saly','young','Female','abcd012','yy@example.org','1-123-4201-4201','g'),
(25,'conan','amie','male','abcd012','zz@example.edu','1-123-4201-4201','g');

-- Insert data into user_language
INSERT INTO Airbnb.user_language (id, user_id, language_id)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21);



-- Insert data into messages
INSERT INTO Airbnb.messages (messages_id, content, sender, receiver)
VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 10, 20),
(2, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum', 9, 21),
(3, 'Fusce aliquet magna a', 22, 8),
(4, 'Excepteur sint occaecat cupidatat', 21, 17),
(5, 'ut aut reiciendis voluptatibus maiores alias consequatur', 8, 20),
(6, 'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis', 16, 22),
(7, 'quis nostrum exercitationem ullam corporis suscipit laboriosam,', 11, 23),
(8, 'quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada', 20, 19),
(9, 'aut perferendis doloribus asperiores repellat', 11, 9),
(10, 'faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus', 21, 5),
(11, 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit', 11, 22),
(12, 'Nam libero tempore, cum soluta nobis est', 14, 12),
(13, 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil', 13, 7),
(14, 'Excepteur sint occaecat cupidatat non proident', 17, 16),
(15, 'turpis vitae purus gravida', 8, 22),
(16, 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam', 3, 18),
(17, 'vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?', 25, 2),
(18, 'non, vestibulum', 24, 5),
(19, 'vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum', 11, 17),
(20, 'Temporibus autem quibusdam et', 14, 17),
(21, 'aut perferendis doloribus asperiores repellat', 4, 10);


--Insert data into Country
INSERT INTO Airbnb.country (country_code, country_name) 
VALUES 
('CHE', 'Switzerland'),
('USA', 'United States'),
('AUS', 'Australia'),
('IT', 'Italy'),
('BR', 'Brazil'),
('MEX', 'Mexico'),
('ES', 'Spain'),
('MA', 'Morocco'),
('UK', 'United Kingdom'),
('CA', 'Canada'),
('FR', 'France'),
('GER', 'Germany'),
('GR', 'Greece'),
('NIG', 'Nigeria'),
('CH', 'China'),
('KE', 'Kenya'),
('KOR', 'Korea'),
('JP', 'Japan'),
('NL', 'Netherlands'),
('GHA', 'Ghana'),
('PT', 'Portugal');

-- Insert data into Coordinates
INSERT INTO Airbnb.coordinates (coordinates_id, longitude, latitude)
VALUES
(1, -5.994072, 37.392529),
(2, -118.243683, 34.052235),
(3, -73.935242, 40.730610),
(4, 13.404954, 52.520008),
(5, 6.633597, 46.519962),
(6, -85.766941, 86.783112),
(7, 91.146779, 0.18433),
(8, 132.221576, 62.03904),
(9, -59.259278, 44.039268),
(10, -142.8335420532, 7.667052),
(11, 33.3676632112, -16.5748612096),
(12, -108.2359575688, 11.5804635136),
(13, 72.6925345743, -24.3382217728),
(14, 100.8737539424, -6.2045511149),
(15, -136.2605738655, -56.4845107232),
(16, -138.967112241, 6.9646099458),
(17, -74.1623210117, 52.5182486853),
(18, 22.5965046191, 53.2081907550668),
(19, 103.7096014296, -10.7336976668218),
(20, -3.0170098885134, -105.2288145802);



-- Insert data into City
INSERT INTO Airbnb.city (city_id, city_name, country_code) 
VALUES
(1, 'Venise', 'IT'),
(2, 'Berlin', 'GER'),
(3, 'Kenya', 'KE'),
(4, 'Lausanne', 'CHE'),
(5, 'Miami', 'USA'),
(6, 'New York', 'USA'),
(7, 'Porto', 'PT'),
(8, 'London', 'UK'),
(9, 'Liverpool', 'UK'),
(10, 'Perth', 'AUS'),
(11, 'Amsterdam', 'NL'),
(12, 'Accra', 'GHA'),
(13, 'New Mexico', 'MEX'),
(14, 'Manchester', 'UK'),
(15, 'Paris', 'FR'),
(16, 'Strasbourg', 'FR'),
(17, 'Toronto', 'CA'),
(18, 'Seville', 'ES'),
(19, 'Ottawa', 'CA'),
(20, 'Kiyoto', 'JP'),
(21, 'Tokyo', 'JP');


-- Insert data into Airbnb.neighborhood
INSERT INTO Airbnb.neighborhood (neighborhood_id, name, city_id, country_code)
VALUES
(1, 'Downtown', 17, 'CA'),
(2, 'Ribeira', 7, 'PT'),
(3, 'LaPalaya', 18, 'ES'),
(4, 'Kreuzberg', 2, 'GER'),
(5, 'Friedrichshain', 2, 'GER'),
(6, 'Castello', 1, 'IT'),
(7, 'Cannaregio', 1, 'IT'),
(8, 'Jordaan', 11, 'NL'),
(9, 'Westerpark', 11, 'NL'),
(10, 'Westend', 2, 'GER'),
(11, 'Ostend', 2, 'GER'),
(12, 'Downtown', 5, 'USA'),
(13, 'Manhatten', 6, 'USA'),
(14, 'SoHo', 6, 'USA'),
(15, 'OldTown', 21, 'JP'),
(16, 'Sydney H', 10, 'AUS'),
(17, 'ByWard Market', 19, 'CA'),
(18, 'Downtown', 17, 'CA'),
(19, 'Le Marais', 15, 'FR');

	  
-- Insert data into Airbnb.address
INSERT INTO Airbnb.address (address_id, country_code, city_id, neighborhood_id, street, house_number, apartment_number, coordinates_id) 
VALUES 
(1, 'NL', 11, 8, 'De Nieuwe Hoogstraat', '260', '7', 1),
(2, 'NL', 11, 9, 'Javastraat', '19', '40', 2),
(3, 'USA', 5, 3, 'fener sokak', '433', '2', 3),
(4, 'FR', 15, 19, 'Revoli Street', '45', '9', 4),
(5, 'FR', 16, 19, 'champs Street', '351', '4', 5),
(6, 'JP', 20, 15, 'JPN Street', '11', '1', 6),
(7, 'JP', 20, 15, 'Nakamise Dori', '33', '10', 7),
(8, 'GER', 3, 10, 'Ostend Strasse', '184', '50', 8),
(9, 'GER', 2, 10, 'Berliner Strasse', '1154', '8', 9),
(10, 'ES', 18, 3, 'Las Rambalas', '2', '20', 10),
(11, 'PT', 7, 2, 'Avenida Correia', '42', '6', 11),
(12, 'ES', 18, 3, 'Champs Street', '1789', '33', 12),
(13, 'PT', 7, 2, 'Rua de Paiva', '2010', '3', 13),
(14, 'USA', 5, 7, 'Fifth Avenue', '212', '71', 14),
(15, 'USA', 6, 7, 'Wall Street', '1096', '34', 15),
(16, 'USA', 6, 13, 'Crosby Street', '2169', '12', 16),
(17, 'CA', 1, 18, 'Yonge Street', '43', '59', 17),
(18, 'CA', 19, 18, 'Sparks Street', '34', '60', 18),
(19, 'AUS', 21, 16, 'Oxford Street', '3891', '5', 19),
(20, 'AUS', 21, 16, 'Gloud Street', '59', '14', 20);


-- Insert data into place type
INSERT INTO Airbnb.place_type (place_type_id, place_type)
VALUES
(1, 'apartment'),
(2, 'room'),
(3, 'bed'),
(4, 'hotel'),
(5, 'bed'),
(6, 'room'),
(7, 'room'),
(8, 'bed'),
(9, 'hotel'),
(10, 'apartment'),
(11, 'hotel'),
(12, 'bed'),
(13, 'room'),
(14, 'apartment'),
(15, 'room'),
(16, 'room'),
(17, 'bed'),
(18, 'hotel'),
(19, 'bed'),
(20, 'room'),
(21, 'room');


-- Insert dummy data into Airbnb.amenities
INSERT INTO Airbnb.amenities (amenities_id, property_id, wifi, kitchen, washer, tv, parking, dryer, refrigerator, iron, heating, workspace, waterfront, hairdryer, pool, hottub, ev_charger, gym, breakfast, indoor_fireplace, smoking_allowed, smoke_alarm, carbonmonoxide_alarm)
VALUES
(1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1),
(2, 2, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0),
(3, 3, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1),
(4, 4, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1),
(5, 5, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0),
(6, 6, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1),
(7, 7, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1),
(8, 8, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(9, 9, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1),
(10, 10, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0),
(11, 11, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1),
(12, 12, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1),
(13, 13, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0),
(14, 14, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1),
(15, 15, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1),
(16, 16, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0),
(17, 17, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1),
(18, 18, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
(19, 19, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1),
(20, 20, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0),
(21, 21, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0);


-- Insert data into property
INSERT INTO Airbnb.property (property_id, title, date_created, address_id, user_id, review_rating_id, base_price, discount_per_week, discount_per_month, service_fee, airbnb_fee)
VALUES
(1,'Lorem ipsum','2022-01-01',8,1,8,59,7,12,10,8), 
(2,'consectetur adipiscing','2022-01-10',16,2,4,45,8,10,5,3),
(3,'Excepteur sint','2022-09-01',10,5,18,68,5,12,2,4),
(4,'commodo consequat','2023-02-20',7,7,11,97,5,15,10,8),
(5,'ut perspiciatis','2023-05-12',6,6,7,32,2,12,10,5),
(6,'Quis autem vel','2023-03-02',11,16,10,29,4,15,18,2),
(7,'suscipit laboriosam','2023-07-27',14,19,9,122,7,14,22,7),
(8,'Neque porro','2023-01-03',13,12,14,134,3,15,18,4),
(9,'sed quia','2022-01-11',17,15,10,76,1,16,12,6),
(10,'At vero eos ','2022-08-08',12,12,16,102,2,14,5,2),
(11,'Temporibus autem','2023-01-24',5,17,2,152,4,11,20,10),
(12,'Itaque earum','2023-03-15',17,17,3,46,6,13,9,14),
(13,'Nam libero','2022-04-18',6,4,13,111,1,13,12,8),
(14,'dolorum fuga','2022-01-06',10,16,4,119,0,11,9,5),
(15,'adipisci velit','2023-08-31',7,8,11,128,3,14,3,6),
(16,'qui ratione','2023-05-11',4,11,2,120,5,14,3,5),
(17,'quasi architecto','2023-07-20',9,12,7,123,2,13,16,10),
(18,'Ut enim','2022-01-11',8,18,1,92,6,10,18,2),
(19,'nulla pariatur','2023-01-20',13,19,2,3,10,20,4,9),
(20,'dolorem eum','2023-04-22',9,15,17,84,7,8,13,1),
(21,'irure dolor','2022-02-13',4,3,25,80,2,7,13,4);

-- Insert data into property_amenties
INSERT INTO Airbnb.property_amenities (id, property_id, amenities_id)
VALUES
(28, 2, 6),
(29, 4, 10),
(30, 8, 19),
(31, 7, 8),
(32, 6, 7),
(33, 11, 11),
(34, 10, 2),
(35, 15, 13),
(36, 9, 1),
(37, 1, 4),
(38, 3, 5),
(39, 5, 9),
(40, 12, 12),
(41, 14, 18),
(42, 16, 17),
(43, 19, 14),
(44, 18, 16),
(45, 13, 20),
(46, 17, 21),
(47, 20, 11),
(48, 21, 20);


-- Insert data into review_rating
INSERT INTO Airbnb.review_rating (review_rating_id, review, rating, date_reviewed, user_id, property_id)
VALUES
(1,'Excepteur sint occaecat cupidatat non proident',4,'2022-11-01 08:45:10',7,1),
(2,'sunt in culpa qui officia deserunt mollit anim id est laborum',5,'2022-12-20 09:00:00',13,3),
(3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',3,'2022-05-14 09:00:00',5,2),
(4,'Ut enim ad minim veniam',4,'2022-07-02 08:45:10',10,5),
(5,'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',4,'2022-04-25 08:45:10',7,4),
(6,'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit',5,'2023-03-08 08:45:10',20,7),
(7,'qui in ea voluptate velit esse quam nihil molestiae consequatur',3,'2023-06-13 08:45:10',15,6),
(8,'vel illum qui dolorem eum fugiat quo voluptas nulla pariatur',2,'2023-07-21 08:45:10',2,9),
(9,'sed dictum eleifend, nunc risus varius orci',3,'2023-07-06 08:45:10',6,8),
(10,'sed quia consequuntur magni dolores eos qui ratione voluptatem',4,'2023-09-14 08:45:10',12,11),
(11,'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet',5,'2023-09-14 08:45:10',14,12),
(12,'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam',5,'2023-09-14 08:45:10',1,10),
(13,'Quis autem vel eum iure reprehenderit',5,'2023-07-21 12:50:20',9,14),
(14,'Duis aute irure dolor in reprehenderit',2,'2023-07-21 08:45:10',11,13),
(15,'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit',2,'2023-07-21 08:45:10',2,17),
(16,'Temporibus autem quibusdam et aut officiis',3,'2023-07-21 08:45:10',5,16),
(17,'Et harum quidem rerum facilis est et expedita distinctio',3,'2023-07-21 08:45:10',3,14),
(18,'Itaque earum',5,'2023-07-21 08:45:10',18,16),
(19,'quis nostrum exercitationem ullam',4,'2023-07-21 08:30:20',20,19),
(20,'nunc risus varius orci',5,'2023-07-21 09:15:10',8,20),
(21,'sed dictum eleifend',5,'2023-07-21 11:15:04',16,21),
(22,'ipsum quia dolor sit amet',5,'2023-07-21 13:00:01',22,19),
(23,'sed dictum eleifend, nunc risus varius orci',3,'2023-07-21 07:45:10',24,23),
(24,'omnis dolor repellendus',4,'2023-07-21 08:45:10',23,24),
(25,'corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident',4,'2023-07-21 08:45:10',17,25);

-- Insert dummy data into Airbnb.number_guests
INSERT INTO Airbnb.number_guests (number_guests_id, adults, children, babies, pets, property_id)
VALUES
(1, 2, 1, 0, 0, 2),
(2, 4, 2, 1, 1, 3),
(3, 3, 0, 0, 0, 5),
(4, 1, 0, 1, 0, 4),
(5, 2, 0, 0, 1, 1),
(6, 6, 3, 2, 0, 6),
(7, 2, 1, 1, 1, 7),
(8, 4, 2, 0, 0, 9),
(9, 2, 0, 0, 0, 11),
(10, 3, 1, 0, 1, 10),
(11, 1, 0, 0, 0, 8),
(12, 2, 1, 1, 0, 12),
(13, 4, 0, 0, 0, 14),
(14, 2, 0, 0, 1, 15),
(15, 3, 2, 1, 0, 17),
(16, 4, 3, 1, 0, 16),
(17, 1, 0, 0, 0, 13),
(18, 2, 0, 0, 1, 20),
(19, 1, 3, 1, 0, 21),
(20, 1, 1, 0, 0, 18),
(21, 1, 4, 1, 1, 2);

-- Insert data into wishlist
INSERT INTO Airbnb.wishlist (wishlist_id, name, user_id)
VALUES
(1, 'Nemo enim ipsam voluptatem', 1),
(2, 'Neque porro quisquam est', 17),
(3, 'bibendum fermentum metus.', 10),
(4, 'Quis autem vel eum', 12),
(5, 'semper cursus. Integer', 21),
(6, 'vel illum qui dolorem eum fugiat quo', 15),
(7, 'Duis gravida. Praesent', 16),
(8, 'deserunt mollitia animi', 20),
(9, 'porttitor scelerisque neque.', 8),
(10, 'ulpa qui officia', 18),
(11, 'Nam libero tempore', 9),
(12, 'in aliquet lobortis,', 15),
(13, 'tempus scelerisque, lorem', 17),
(14, 'amet, consectetuer adipiscing', 6),
(15, 'Temporibus autem quibusdam', 8),
(16, 'ultrices, mauris ipsum', 25),
(17, 'oluptates repudiandae sint', 9),
(18, 'adipiscing ligula. Aenean', 20),
(19, 'Lorem ipsum dolor sit amet', 23),
(20, 'ante dictum mi,', 8),
(21, 'voluptas nulla pariatur,', 25);


-- Insert data into wishlist_property_mapping
INSERT INTO Airbnb.wishlist_property_mapping (wishlist_id, property_id)
VALUES
(12, 1),
(3, 9),
(10, 6),
(15, 3),
(16, 13),
(5, 17),
(4, 11),
(18, 2),
(10, 5),
(5, 15),
(7, 18),
(6, 1),
(19, 6),
(8, 1),
(7, 5),
(15, 20),
(1, 19),
(13, 15),
(8, 8),
(14, 7);


-- Insert data into images
INSERT INTO Airbnb.images (images_id, image, description, property_id)
VALUES
(1,'image.jpg','Living room view',2),
(2,'image.jpg','Kitchen area',5),
(3,'image.jpg','Outdoor patio',5),
(4,'image.jpg','Swimming pool',20),
(5,'image.jpg','Dining area',3),
(6,'image.jpg','Front entrance',13),
(7,'image.jpg','Guest room',17),
(8,'image.jpg','Balcony',10),
(9,'image.jpg','Garden',9),
(10,'image.jpg','Patio',8),
(11,'image.jpg','Pool area',3),
(12,'image.jpg','workspace',4),
(13,'image.jpg','Outdoor patio',1),
(14,'image.jpg','Fitness center',16),
(15,'image.jpg','occaecat cupidatat non proident',2),
(16,'image.jpg','sunt in culpa qui officia',4),
(17,'image.jpg','consectetur adipiscing elit',13),
(18,'image.jpg','Duis aute irure dolor ',2),
(19,'image.jpg','At vero eos et accusamus',15),
(20,'image.jpg','Temporibus autem quibusdam',11),
(21,'image.jpg','Living room view',20),
(22,'image.jpg','Pool area',20),
(23,'image.jpg','est laborum et dolorum fuga' ,10),
(24,'image.jpg','et aut officiis debitis',11),
(25,'image.jpg','Nam libero temporeview',13),
(26,'image.jpg','omnis dolor repellendus',6),
(27,'image.jpg','est laborum et dolorum fuga',16),
(28,'image.jpg','sunt in culpa qui officia',7),
(29,'image.jpg','iusto odio dignissimos ducimus',14),
(30,'image.jpg','Ut enim ad minima veniam',8),
(31,'image.jpg','consectetur adipiscing elit',4),
(32,'image.jpg','sed do eiusmod tempor incididunt',6),
(33,'image.jpg','Excepteur sint occaecat cupidatat',8),
(34,'image.jpg','sunt in culpa qui officia',16),
(35,'image.jpg','mollit anim id est laborum',6);

-- Insert data into the rooms_beds table
INSERT INTO Airbnb.rooms_beds (bedrooms, beds, bathrooms)
VALUES
(2, 3, 2),
(1, 1, 1),
(3, 4, 2),
(2, 2, 1),
(1, 1, 1),
(2, 3, 2),
(1, 1, 1),
(3, 4, 2),
(2, 2, 1),
(1, 1, 1),
(2, 3, 2),
(1, 1, 1),
(3, 4, 2),
(2, 2, 1),
(1, 1, 1),
(2, 3, 2),
(1, 1, 1),
(3, 4, 2),
(2, 2, 1),
(1, 1, 1),
(2, 3, 2);


-- Insert data into payment_method
INSERT INTO Airbnb.payment_method (payment_method_id, payment_method)
VALUES
(1, 'googlepay'),
(2, 'debit_card'),
(3, 'applepay'),
(4, 'credit_card'),
(5, 'paypal'),
(6, 'paypal'),
(7, 'debit_card'),
(8, 'paypal'),
(9, 'googlepay'),
(10, 'debit_card'),
(11, 'applepay'),
(12, 'paypal'),
(13, 'applepay'),
(14, 'googlepay'),
(15, 'googlepay'),
(16, 'credit_card'),
(17, 'applepay'),
(18, 'applepay'),
(19, 'googlepay'),
(20, 'credit_card');
      

-- Insert data into booking
INSERT INTO Airbnb.booking (booking_id, check_in, check_out, number_guests, property_id, user_id)
VALUES
(1,'2022-04-29','2022-05-08',1,1,11),
(2,'2022-02-03','2023-05-07',4,5,2),
(3,'2022-04-29','2022-05-08',2,18,20),
(4,'2022-04-29','2022-05-08',5,15,23),
(5,'2022-04-29','2022-05-08',4,8,4),
(6,'2023-09-01','2023-05-04',1,11,6),
(7,'2023-05-12','2023-05-07',6,6,4),
(8,'2023-07-03','2023-05-07',5,15,17),
(9,'2023-06-03','2023-05-07',3,7,10),
(10,'2023-05-03','2023-05-07',3,5,11),
(11,'2023-05-03','2023-05-07',2,12,3),
(12,'2023-05-03','2023-05-07',1,3,25),
(13,'2023-05-03','2023-05-07',2,13,21),
(14,'2023-05-03','2023-05-07',5,15,18),
(15,'2022-04-29','2022-05-08',4,3,11),
(16,'2022-04-29','2022-05-08',2,15,17),
(17,'2023-07-29','2022-05-08',3,17,10),
(18,'2023-05-03','2023-05-07',2,13,5),
(19,'2023-05-03','2023-05-07',4,18,10),
(20,'2023-05-03','2023-05-07',3,8,16),
(21,'2023-07-10','2023-07-12',2,7,15);


