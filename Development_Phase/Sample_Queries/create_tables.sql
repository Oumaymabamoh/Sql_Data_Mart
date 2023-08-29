-- Create Airbnb Schema
CREATE SCHEMA IF NOT EXISTS Airbnb;


-- Table Airbnb.country
DROP TABLE IF EXISTS Airbnb.country CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.country (
  country_code VARCHAR(3) NOT NULL,
  country_name VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (country_code));



-- Create Table Airbnb.city
DROP TABLE IF EXISTS Airbnb.city CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.city (
  city_id SERIAL PRIMARY KEY NOT NULL,
  city_name VARCHAR(50) NOT NULL,
  country_code VARCHAR(3) NOT NULL,
  CONSTRAINT fk_city_country
    FOREIGN KEY (country_code)
    REFERENCES Airbnb.country (country_code)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
-- Creating an index on country_code column
CREATE INDEX IF NOT EXISTS fk_city_country_idx ON Airbnb.city (country_code);



-- Table Airbnb.neighborhood
DROP TABLE IF EXISTS Airbnb.neighborhood CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.neighborhood (
  neighborhood_id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL,
  city_id INT NULL DEFAULT NULL,
  country_code VARCHAR(3) NULL DEFAULT NULL,
  CONSTRAINT fk_country
    FOREIGN KEY (country_code)
    REFERENCES Airbnb.country (country_code)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_neighborhood_city1
    FOREIGN KEY (city_id)
    REFERENCES Airbnb.city (city_id));
-- Creating indexes
CREATE INDEX IF NOT EXISTS fk_neighborhood_city1_idx ON Airbnb.neighborhood (city_id);
CREATE INDEX IF NOT EXISTS fk_country_idx ON Airbnb.neighborhood (country_code);



-- Table Airbnb.coordinates
DROP TABLE IF EXISTS Airbnb.coordinates CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.coordinates (
  coordinates_id SERIAL PRIMARY KEY NOT NULL,
  longitude DECIMAL(18,15) NOT NULL,
  latitude DECIMAL(18,15) NOT NULL);



-- Table Airbnb.address
DROP TABLE IF EXISTS Airbnb.address CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.address (
  address_id SERIAL PRIMARY KEY NOT NULL,
  country_code VARCHAR(3) NOT NULL,
  city_id INT NOT NULL,
  neighborhood_id INT NOT NULL,
  street VARCHAR(90) NOT NULL,
  house_number INT NOT NULL,
  apartment_number INT NULL DEFAULT NULL,
  coordinates_id INT NOT NULL,
  CONSTRAINT fk
    FOREIGN KEY (country_code)
    REFERENCES Airbnb.country (country_code)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk2
    FOREIGN KEY (city_id)
    REFERENCES Airbnb.city (city_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk3
    FOREIGN KEY (neighborhood_id)
    REFERENCES Airbnb.neighborhood (neighborhood_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk4
    FOREIGN KEY (coordinates_id)
    REFERENCES Airbnb.coordinates (coordinates_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
-- Creating indexes
CREATE INDEX IF NOT EXISTS fk_idx ON Airbnb.address (country_code);
CREATE INDEX IF NOT EXISTS fk2_idx ON Airbnb.address (city_id);
CREATE INDEX IF NOT EXISTS fk3_idx ON Airbnb.address (neighborhood_id);
CREATE INDEX IF NOT EXISTS fk4_idx ON Airbnb.address (coordinates_id);


-- Table Airbnb.amenities
DROP TABLE IF EXISTS Airbnb.amenities CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.amenities (
  amenities_id SERIAL PRIMARY KEY NOT NULL,
  property_id INT ,	
  wifi SMALLINT,
  kitchen SMALLINT,
  washer SMALLINT,
  tv SMALLINT,
  parking SMALLINT,	
  dryer SMALLINT,
  refrigerator SMALLINT,
  iron SMALLINT,
  heating SMALLINT,
  workspace SMALLINT,
  waterfront SMALLINT,	
  hairdryer SMALLINT,
  pool SMALLINT,
  hottub SMALLINT,
  ev_charger SMALLINT,
  gym SMALLINT,
  breakfast SMALLINT,
  indoor_fireplace SMALLINT,
  smoking_allowed SMALLINT,
  smoke_alarm SMALLINT,
  carbonmonoxide_alarm SMALLINT,
 CONSTRAINT language
    FOREIGN KEY (property_id)
    REFERENCES Airbnb.property (roperty_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- Table Airbnb.social_media
DROP TABLE IF EXISTS Airbnb.social_media CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.social_media (
  social_media_id SERIAL PRIMARY KEY NOT NULL,
  facebook VARCHAR(500)  DEFAULT NULL,
  instagram VARCHAR(500) DEFAULT NULL,
  twitter VARCHAR(500)  DEFAULT NULL);


-- Table Airbnb.language
DROP TABLE IF EXISTS Airbnb.language CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.language (
  language VARCHAR(50) NOT NULL,
  PRIMARY KEY (language));



-- Table Airbnb.user
DROP TABLE IF EXISTS Airbnb.user CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.user (
  user_id SERIAL PRIMARY KEY NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,	
  password VARCHAR(50) NOT NULL,
  phone VARCHAR(50) DEFAULT NULL,
  user_type VARCHAR(1) NOT NULL,
  language VARCHAR(50) NULL DEFAULT 'English',
  social_media_id INT NULL DEFAULT 1,
  CONSTRAINT fk_user_social_media1
    FOREIGN KEY (social_media_id)
    REFERENCES Airbnb.social_media (social_media_id),
  CONSTRAINT language
    FOREIGN KEY (language)
    REFERENCES Airbnb.language (language)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
-- Creating indexes
CREATE INDEX IF NOT EXISTS fk_user_social_media1_idx ON Airbnb.user (social_media_id);
CREATE INDEX IF NOT EXISTS language_idx ON Airbnb.user ("language");


-- Table Airbnb.review_rating
DROP TABLE IF EXISTS Airbnb.review_rating CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.review_rating (
  review_rating_id SERIAL PRIMARY KEY NOT NULL,
  review VARCHAR(500) NULL DEFAULT NULL,
  rating INT NULL DEFAULT NULL,
  date_reviewed TIMESTAMP NULL DEFAULT NULL,
  user_id INT NOT NULL,
  property_id INT NOT NULL,
 CONSTRAINT fk_review_rating_property1
    FOREIGN KEY (property_id)
    REFERENCES Airbnb.property (property_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_review_rating_user1
    FOREIGN KEY (user_id)
    REFERENCES Airbnb.user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
 );
-- Creating indexes
CREATE INDEX IF NOT EXISTS fk_review_rating_user1_idx ON Airbnb.review_rating (user_id);
CREATE INDEX IF NOT EXISTS fk_review_rating_property1_idx ON Airbnb.review_rating (property_id);


-- Table Airbnb.rooms_beds
DROP TABLE IF EXISTS Airbnb.rooms_beds CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.rooms_beds (
  rooms_beds_id SERIAL PRIMARY KEY NOT NULL,
  bedrooms INT DEFAULT NULL,
  beds INT NOT NULL,
  bathrooms INT NULL DEFAULT NULL);
  


-- Create Table Airbnb.place_type
-- Drop Table if it exists
DROP TABLE IF EXISTS Airbnb.place_type CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.place_type (
  place_type_id SERIAL PRIMARY KEY NOT NULL,
  place_type VARCHAR(20) NOT NULL,
  CONSTRAINT chk_place_type CHECK (place_type IN ('hotel', 'apartment', 'room', 'bed'))
);


-- Table Airbnb.property
-- Drop Table if it exists
DROP TABLE IF EXISTS Airbnb.property CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.property (
  property_id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(50) NOT NULL,
  date_created TIMESTAMP NULL DEFAULT NULL,
  address_id INT NOT NULL,
  user_id INT NOT NULL,
  review_rating_id INT NULL DEFAULT NULL,
  price_id INT NULL DEFAULT NULL,
 CONSTRAINT fk_property_address1
    FOREIGN KEY (address_id)
    REFERENCES Airbnb.address (address_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
 CONSTRAINT fk_property_review_rating_1
    FOREIGN KEY (review_rating_id)
    REFERENCES Airbnb.review_rating (review_rating_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
 CONSTRAINT fk_property_rooms_beds_1
    FOREIGN KEY (property_id)
    REFERENCES Airbnb.rooms_beds (rooms_beds_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
 CONSTRAINT fk_property_type_of_place1
    FOREIGN KEY (property_id)
    REFERENCES Airbnb.place_type (place_type_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,	
 CONSTRAINT fk_property_user1
    FOREIGN KEY (user_id)
    REFERENCES Airbnb.user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
 CONSTRAINT fk_property_amenities
    FOREIGN KEY (property_id)
    REFERENCES Airbnb.amenities (amenities_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
 CONSTRAINT fk_property_price1
    FOREIGN KEY (price_id)
    REFERENCES Airbnb.price (price_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
  );

-- Creating indexes
CREATE INDEX IF NOT EXISTS fk_property_address1_idx ON Airbnb.property (address_id);
CREATE INDEX IF NOT EXISTS fk_property_user1_idx ON Airbnb.property (user_id);
CREATE INDEX IF NOT EXISTS fk_property_review_rating_1_idx ON Airbnb.property (review_rating_id);
CREATE INDEX IF NOT EXISTS fk_property_amenities_idx ON Airbnb.property (property_id);


-- Create Table Airbnb.booking
-- Drop Table if it exists
DROP TABLE IF EXISTS Airbnb.booking CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.booking (
  booking_id SERIAL PRIMARY KEY NOT NULL,
  check_in DATE NOT NULL,
  check_out DATE NOT NULL,
  number_guests INT NOT NULL,
  property_id INT NOT NULL,
  user_id INT NOT NULL,
  CONSTRAINT fk_booking_property1
    FOREIGN KEY (property_id)
    REFERENCES Airbnb.property (property_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_booking_user1
    FOREIGN KEY (user_id)
    REFERENCES Airbnb.user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
-- Creating indexes
CREATE INDEX IF NOT EXISTS fk_booking_property1_idx ON Airbnb.booking (property_id);
CREATE INDEX IF NOT EXISTS fk_booking_user1_idx ON Airbnb.booking (user_id);



-- Create Table Airbnb.images
-- Drop Table if it exists
DROP TABLE IF EXISTS Airbnb.images CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.images (
  images_id SERIAL PRIMARY KEY NOT NULL,
  image VARCHAR(10) DEFAULT 'image.jpg',
  description VARCHAR(500),
  property_id INT NOT NULL,
  CONSTRAINT fk_images_property_1
    FOREIGN KEY (property_id)
    REFERENCES Airbnb.property (property_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
-- Creating index
CREATE INDEX IF NOT EXISTS fk_images_property_1_idx ON Airbnb.images (property_id);



-- Create Table Airbnb.messages
-- Drop Table if it exists
DROP TABLE IF EXISTS Airbnb.messages CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.messages (
  messages_id SERIAL PRIMARY KEY NOT NULL,
  content VARCHAR(500),
  sender INT,
  receiver INT,
  CONSTRAINT receiver_fk
    FOREIGN KEY (receiver)
    REFERENCES Airbnb.user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT sender_fk
    FOREIGN KEY (sender)
    REFERENCES Airbnb.user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
-- Creating indexes
CREATE INDEX IF NOT EXISTS sender_idx ON Airbnb.messages (sender);
CREATE INDEX IF NOT EXISTS receiver_idx ON Airbnb.messages (receiver);



-- Table Airbnb.number_guests
DROP TABLE IF EXISTS Airbnb.number_guests CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.number_guests (
  number_guests_id SERIAL PRIMARY KEY NOT NULL,
  adults INT NOT NULL,
  children INT NULL DEFAULT NULL,
  babies INT NULL DEFAULT NULL,
  pets INT NULL DEFAULT NULL,
  property_id INT NOT NULL,	
  CONSTRAINT fk_number_of_guests_property
    FOREIGN KEY (number_guests_id)
    REFERENCES Airbnb.property (property_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



-- Table Airbnb.payment_method
DROP TABLE IF EXISTS Airbnb.payment_method;

CREATE TABLE IF NOT EXISTS Airbnb.payment_method (
  payment_method_id SERIAL PRIMARY KEY NOT NULL,
  payment_method VARCHAR(50) NULL DEFAULT NULL,
  CONSTRAINT fk_paymentmethod_user_1
    FOREIGN KEY (payment_method_id)
    REFERENCES Airbnb.user (user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

-- Create Table Airbnb.price
DROP TABLE IF EXISTS Airbnb.price CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.price (
  price_id SERIAL PRIMARY KEY NOT NULL,
  base_price INT NULL DEFAULT NULL,
  discount_per_week INT NULL DEFAULT NULL,
  discount_per_month INT NULL DEFAULT NULL,
  service_fee INT NULL DEFAULT NULL,
  airbnb_fee INT NULL DEFAULT NULL,
  CONSTRAINT fk_price_property_1
    FOREIGN KEY (price_id)
    REFERENCES Airbnb.property (property_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

--Table Airbnb.wishlist
DROP TABLE IF EXISTS Airbnb.wishlist CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.wishlist (
  wishlist_id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL,
  user_id INT NOT NULL,
  CONSTRAINT fk_wishlist_user1
    FOREIGN KEY (user_id)
    REFERENCES Airbnb.user (user_id));
-- CREATE INDEX
CREATE INDEX IF NOT EXISTS fk_wishlist_user1_idx ON Airbnb.wishlist (user_id);


-- Table Airbnb.wishlist_property_mapping
DROP TABLE IF EXISTS Airbnb.wishlist_property_mapping CASCADE;

CREATE TABLE IF NOT EXISTS Airbnb.wishlist_property_mapping (
  wishlist_id INT NOT NULL,
  property_id INT NOT NULL,
  PRIMARY KEY (wishlist_id, property_id),
  CONSTRAINT fk_wishlist_property_mapping_property
    FOREIGN KEY (property_id)
    REFERENCES Airbnb.property (property_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_wishlist_property_mapping_wishlist
    FOREIGN KEY (wishlist_id)
    REFERENCES Airbnb.wishlist (wishlist_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Creating indexes
CREATE INDEX IF NOT EXISTS idx_wishlist_property_mapping_property ON Airbnb.wishlist_property_mapping (property_id);
CREATE INDEX IF NOT EXISTS idx_wishlist_property_mapping_wishlist ON Airbnb.wishlist_property_mapping (wishlist_id);
