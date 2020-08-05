DROP DATABASE  IF EXISTS second_hand_bookstore;

CREATE DATABASE IF NOT EXISTS second_hand_bookstore ;

USE second_hand_bookstore;

CREATE TABLE translators (
	translator_id int unsigned NOT NULL AUTO_INCREMENT,
	first_name varchar(45) NOT NULL, 
	last_name varchar(45) NOT NULL,
	PRIMARY KEY (translator_id)
);

CREATE TABLE books(
	book_id int unsigned NOT NULL AUTO_INCREMENT,
	publisher_name varchar(45) NOT NULL,
	publishe_year year NOT NULL,
    language_book varchar(45) NOT NULL,
    PRIMARY KEY (book_id)
);

CREATE TABLE translators_books (
	book_id int unsigned NOT NULL,
    translator_id int unsigned NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (translator_id) REFERENCES translators(translator_id)
);

CREATE TABLE autors(
	autor_id int unsigned NOT NULL AUTO_INCREMENT,
	first_name varchar(45) NOT NULL, 
	last_name varchar(45) NOT NULL,
	PRIMARY KEY (autor_id)
);

CREATE TABLE books_features(
	books_features_id int unsigned NOT NULL ,
	title_book varchar(45) NOT NULL,
	pages_num smallint unsigned NOT NULL,
	weight decimal(5,2) NOT NULL,
    PRIMARY KEY (books_features_id)
);

/*Conect autors and features to the book*/

CREATE TABLE autors_books_features(
	books_features_id int unsigned NOT NULL ,
	book_id int unsigned NOT NULL ,
	autor_id int unsigned NOT NULL,
	FOREIGN KEY (books_features_id) REFERENCES books_features(books_features_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (autor_id) REFERENCES autors(autor_id)
);

CREATE TABLE workers (
	worker_id int unsigned NOT NULL AUTO_INCREMENT,
	first_name varchar(45) NOT NULL, 
	last_name varchar(45) NOT NULL,
	address varchar(45) NOT NULL, 
	phone_num varchar(10) NOT NULL,
	join_date date NOT NULL , 
	finish_date date , 
	Worker_type ENUM('Employee', 'Manager'),
	hourly_wage int unsigned NOT NULL,
	PRIMARY KEY (worker_id)
);

CREATE TABLE work_hours (
	worker_id int unsigned NOT NULL ,
	work_year year NOT NULL,
	work_month smallint NOT NULL, 
	total_hours smallint unsigned NOT NULL,
	FOREIGN KEY (worker_id) REFERENCES workers(worker_id)
);

CREATE TABLE inventory (  
	book_id int unsigned NOT NULL ,
	amount_warehouse_inventory smallint unsigned NOT NULL,
	amount_store_inventory smallint unsigned NOT NULL,
	book_condition ENUM('New', 'As New', 'Good', 'Medium', 'Rickety'),
	price_each_book_sell smallint unsigned NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

CREATE TABLE clients (
	client_id int unsigned NOT NULL AUTO_INCREMENT,
	first_name varchar(45) NOT NULL, 
	last_name varchar(45) NOT NULL,
	phone_num varchar(10) NOT NULL, 
	home_num varchar(10) NOT NULL, 
	join_date date NOT NULL,
	PRIMARY KEY (client_id)
);

CREATE TABLE purchase_store (
	purchase_store_id int unsigned NOT NULL AUTO_INCREMENT,
	total_price int unsigned NOT NULL,
	purchase_date date NOT NULL , 
	book_id int unsigned NOT NULL,
    book_condition ENUM('New', 'As New', 'Good', 'Medium', 'Rickety'),
    amount_of_books smallint unsigned NOT NULL,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
	PRIMARY KEY (purchase_store_id)
);

CREATE TABLE purchase_client (
	purchase_client_id int unsigned NOT NULL AUTO_INCREMENT,
	client_id int unsigned NOT NULL,
	total_price int unsigned NOT NULL,
	purchase_type ENUM('Bit', 'Credit', 'Bank transfer'),
	purchase_date date NOT NULL,
	worker_id int unsigned NOT NULL,
	FOREIGN KEY (client_id) REFERENCES clients(client_id),
	FOREIGN KEY (worker_id) REFERENCES workers(worker_id),
	PRIMARY KEY (purchase_client_id)
);

CREATE TABLE book_client (
	purchase_client_id int unsigned NOT NULL,
	book_id int unsigned NOT NULL,
	amount_of_books int unsigned NOT NULL,
	FOREIGN KEY (purchase_client_id) REFERENCES purchase_client(purchase_client_id),
	FOREIGN KEY (book_id) REFERENCES books(book_id)
);

CREATE TABLE delivery_type (
	delivery_type_id int unsigned NOT NULL AUTO_INCREMENT,
	compamy varchar(45) NOT NULL, 
	d_type varchar(45) NOT NULL,
	price_per_kg int unsigned NOT NULL,
	price_per_book int unsigned NOT NULL,
	PRIMARY KEY (delivery_type_id)
);

CREATE TABLE deliveries (
	delivery_id int unsigned NOT NULL AUTO_INCREMENT,
    delivery_type_id int unsigned NOT NULL,
	traking_num  varchar(20) NOT NULL,
	address varchar(45) NOT NULL, 
	delivary_condition ENUM('Preparation', 'Waiting for collection', 'Arrive', 'Sent', 'Delivered'),
	purchase_client_id int unsigned NOT NULL,
	delivery_date date,
    FOREIGN KEY (delivery_type_id) REFERENCES delivery_type(delivery_type_id),
	PRIMARY KEY (delivery_id)
);

CREATE TABLE delivery_book (
	delivery_id int unsigned NOT NULL,
	book_id int unsigned NOT NULL,
	amount_of_books int unsigned NOT NULL,
	FOREIGN KEY (delivery_id) REFERENCES deliveries(delivery_id),
	FOREIGN KEY (book_id) REFERENCES books(book_id)
);

CREATE TABLE orders (
		order_id int unsigned NOT NULL AUTO_INCREMENT,
		book_id int unsigned NOT NULL,
		client_id int unsigned NOT NULL,
		order_state  ENUM('Ordered', 'Available', 'Sold'),
		orderbooks_date date NOT NULL,
		contact_date date,
		amount_of_books int unsigned NOT NULL,
        FOREIGN KEY (client_id) REFERENCES clients(client_id),
        FOREIGN KEY (book_id) REFERENCES books(book_id),
		PRIMARY KEY (order_id)
);

CREATE TABLE payments (
	payment_id int unsigned NOT NULL AUTO_INCREMENT,
	payment_year year NOT NULL,
	payment_month smallint NOT NULL, 
	property_tax int unsigned NOT NULL,
	water int unsigned NOT NULL,
	electricity int unsigned NOT NULL,
	phone_num int unsigned NOT NULL, 
	home_num int unsigned NOT NULL, 
	shipping int unsigned NOT NULL,
	salary int unsigned NOT NULL,
	various int unsigned NOT NULL,
	PRIMARY KEY (payment_id)
);