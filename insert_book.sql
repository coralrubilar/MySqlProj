use second_hand_bookstore;

/*insert into translators table*/

INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (1,'Emma','Lev');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (2,'Olivia','Allen');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (3,'Benjamin','Aaberg');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (4,'Ava','Baker');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (5,'Isabella','Bradley');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (6,'Sophia','Cooper');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (7,'Liam','Davidson');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (8,'Noah','Dixon');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (9,'William','Elliott');
INSERT INTO `second_hand_bookstore`.`translators` (`translator_id`,`first_name`,`last_name`) VALUES (10,'James','Ford');

/*insert into books books*/

INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (1,'No Starch Press,US',2014,'English');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (2,'SIMON & SCHUSTER',2020,'English');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (3,'Profile Books Ltd',2018,'Spanish');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (4,'Canongate Books Ltd',2019,'Spanish');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (5,'Little Brown and Company',2019,'Spanish');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (6,'Harper Collins Publishers',2019,'Indian');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (7,'No Starch Press,US',2019,'Hebrew');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (8,'Simon & Schuster Ltd',2016,'Hebrew');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (9,'Wiz Kids Israel',2018,'Hebrew');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (10,'Orion Publishing Co',2016,'Hebrew');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (11,'No Starch Press,US',2020,'Spanish');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (12,'Simon & Schuster Ltd',2020,'English');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (13,'Wiz Kids Israel',2019,'English');
INSERT INTO `second_hand_bookstore`.`books` (`book_id`,`publisher_name`,`publishe_year`,`language_book`) VALUES (14,'Orion Publishing Co',2020,'Spanish');


/*insert into translators_books table*/

INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (1,1);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (2,5);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (2,6);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (3,3);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (4,4);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (5,5);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (6,6);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (7,1);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (8,2);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (9,7);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (10,8);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (11,1);
INSERT INTO `second_hand_bookstore`.`translators_books` (`book_id`,`translator_id`) VALUES (12,2);

/*insert into autors table*/

INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (1,'Robert','Greene');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (2,'Ben','Greenfield');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (3,'Rob','Sears');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (4,'Malcolm','Gladwell');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (5,'Patrick','Radden Keefe');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (6,'Eric','Matthes');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (7,'Kate','Furnivall');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (8,'George','Ror');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (9,'Nina','Lev');
INSERT INTO `second_hand_bookstore`.`autors` (`autor_id`,`first_name`,`last_name`) VALUES (10,'Victoria','Aveyard');

/*insert to books_features*/

INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (1,'The Laws of Human Nature',624,0.8);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (2,'Boundless by Ben Greenfield',514,2.6);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (3,'The Beautiful Poetry of Donald Trump',624,0.8);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (4,'Talking to Strangers',640,0.6);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (5,'Say Nothing',528,0.46);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (6,'Python Crash Course',544,1.0);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (7,'The Betrayal',448,0.2);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (8,'The Little Paris Bookshop',400,0.4);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (9,'War Storm',688,0.45);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (10,'The Laws of Human Nature',624,1.0);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (11,'The Betrayal1',453,0.4);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (12,'The Little Paris Bookshop',410,0.5);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (13,'War Storm2',680,0.40);
INSERT INTO `second_hand_bookstore`.`books_features` (`books_features_id`,`title_book`,`pages_num`,`weight`) VALUES (14,'The Betrayal2',454,0.5);

/*insert into autors_books_features*/

INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (1,1,1);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (2,2,2);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (3,3,3);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (4,4,4);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (5,5,5);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (6,6,6);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (7,1,1);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (8,8,7);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (8,9,7);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (9,9,8);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (10,10,9);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (10,5,9);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (11,1,10);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (12,8,14);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (12,9,14);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (13,9,12);
INSERT INTO `second_hand_bookstore`.`autors_books_features` (`book_id`,`autor_id`,`books_features_id`) VALUES (14,10,13);

/*insert into workers table*/

INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (1,'ron','elisha','rines 29, Tel Aviv','0523333355','2020-03-02',NULL,'manager',60);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (2,'Addison','Bailey','Allenby 40, Tel Aviv','0526677888','2018-03-08','2019-03-02','manager',50);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (3,'Cassidy','Brady','Begin 9, Tel Aviv','0507777666','2019-03-02','2018-03-02','Employee',32);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (4,'Lane','Cooper','Sheinkin 19, Tel Aviv','0544445566','2017-08-02',NULL,'Employee',32);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (5,'Kennedy','Ellis','Kaplan 33, Tel Aviv','0509999876','2018-09-08',NULL,'Employee',32);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (6,'ben','Finley','Frishman 40, Tel Aviv','0546222111','2019-07-02',NULL,'Employee',31);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (7,'moshe','Lennon','HaArbaa 15, Tel Aviv','0529998876','2018-07-02',NULL,'Employee',31);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (8,'idan','Jagger','Ben Yehuda 10, Tel Aviv','0528877654','2019-08-02',NULL,'Employee',30);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (9,'daniel','Tyler','Dizengoff 23, Tel Aviv','0509909088','2020-04-05',NULL,'Employee',30);
INSERT INTO `second_hand_bookstore`.`workers` (`worker_id`,`first_name`,`last_name`,`address`,`phone_num`,`join_date`,`finish_date`,`Worker_type`,`hourly_wage`) VALUES (10,'itay','Taylor','HaMasger  6, Tel Aviv','0523333999','2018-08-08',NULL,'Employee',30);

/*insert into worker_houers table*/

INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (1,'2020',07,180);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (1,'2020',06,190);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (3,'2020',07,90);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (7,'2020',07,80);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (4,'2020',07,100);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (8,'2020',07,110);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (5,'2020',07,90);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (9,'2020',07,130);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (6,'2020',07,110);
INSERT INTO `second_hand_bookstore`.`work_hours` (`worker_id`,`work_year`,`work_month`,`total_hours`) VALUES (10,'2020',07,120);

/*insert to inventory table*/

INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (1,2,3,'New',50);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (2,3,3,'as new',70);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (3,0,2,'New',50);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (4,1,0,'good',60);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (5,2,5,'good',60);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (6,1,1,'New',70);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (7,1,3,'Rickety',40);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (8,2,2,'As New',70);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (9,2,4,'Rickety',40);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (10,0,0,'Medium',60);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (11,2,3,'New',110);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (12,3,2,'As New',90);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (12,2,4,'Good',60);
INSERT INTO `second_hand_bookstore`.`inventory` (`book_id`,`amount_warehouse_inventory`,`amount_store_inventory`,`book_condition`,`price_each_book_sell`) VALUES (12,0,1,'Rickety',30);
    
/*insert into clients table*/

INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (1,'coral','rubilar','0528888888','098666666','2020-05-02');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (2,'idan','kario','0526668888','038866666','2019-07-02');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (3,'sapir','ezra','0546668888','048677766','2018-02-02');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (4,'almog','klinger','0505588811','028666111','2020-01-01');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (5,'dor','lavie','0526666666','097777777','2020-02-02');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (6,'inbar','lev','0524455667','091234567','2018-12-12');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (7,'guy','sharir','0529888776','098666688','2019-11-12');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (8,'itamar','bar','0522228888','092222222','2018-05-02');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (9,'maya','oren','0539898777','095555522','2020-05-02');
INSERT INTO `second_hand_bookstore`.`clients` (`client_id`,`first_name`,`last_name`,`phone_num`,`home_num`,`join_date`) VALUES (10,'nizan','rubilar','0528901355','098933355','2020-03-02');
																									
/*insert into purchase_store table*/

INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (1,3,'2018-08-01',1,'New',100);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (2,6,'2019-08-01',2, 'Rickety',12);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (3,5,'2020-07-01',3,'Rickety',21);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (4,2,'2018-03-01',4,'New',54);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (5,5,'2018-05-01',5,'Medium',35);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (6,4,'2018-09-01',6,'New',66);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (7,10,'2018-08-02',7,'As New',112);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (8,6,'2018-07-05',8,'As New',100);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (9,8,'2018-07-10',9,'Good',100);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (10,8,'2018-10-12',10,'Rickety',99);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (11,4,'2018-10-14',11,'New',66);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (12,10,'2018-10-20',12,'As New',102);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (13,6,'2018-11-05',13,'As New',90);
INSERT INTO `second_hand_bookstore`.`purchase_store` (`purchase_store_id`,`amount_of_books`,`purchase_date`,`book_id`,`book_condition`,`total_price`) VALUES (14,8,'2018-11-10',14,'Good',80);


/*insert into purchase_client table*/

INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (1,  1,  510,  'Bit',  		  '2020-07-01',  1);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (2,  3,  500,  'Bit',  		  '2020-06-01',  2);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (11, 3,  20,   'Bit',           '2020-06-01',  3);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (12, 3,  20,   'Bit',           '2020-06-01',  4);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (3,  2,  40,   'Bank transfer', '2019-08-01',  1);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (4,  4,  50,   'Credit',		  '2018-10-01',  5);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (5,  5,  60,   'Bit',			  '2020-08-01',  6);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (6,  7,  70,   'Bank transfer', '2018-05-01',  7);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (7,  8,  100,  'Bit',			  '2020-08-07',	 8);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (8,  9,  20,   'Credit',		  '2018-08-27',	 9);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (9,  6,  100,  'Bank transfer', '2020-02-01',	 10);
INSERT INTO `second_hand_bookstore`.`purchase_client` (`purchase_client_id`,`client_id`,`total_price`,`purchase_type`,`purchase_date`,`worker_id`) VALUES (10, 10, 70,   'Credit',		  '2019-01-01',	1);

/*insert into purchase_con_client table*/

INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (1,		1,		2);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (1,		7,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (1,		11,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (1,		3,		2);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (2,		8,		3);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (3,		9,		2);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (3,		13,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (3,		7,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (4,		1,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (4,		3,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (5,		5,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (6,		6,		3);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (7,		10,		2);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (7,		8,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (8,		10,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (9,		4,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (9,		7,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (10,	6,		1);
INSERT INTO `second_hand_bookstore`.`book_client` (`purchase_client_id`,`book_id`,`amount_of_books`) VALUES (11,	13,		2);

/*insert into delivery_type table*/

INSERT INTO `second_hand_bookstore`.`delivery_type` (`delivery_type_id`,`compamy`,`d_type`,`price_per_kg`,`price_per_book`) VALUES (1,'Israel Post',   'Registered mail',           2,  1);
INSERT INTO `second_hand_bookstore`.`delivery_type` (`delivery_type_id`,`compamy`,`d_type`,`price_per_kg`,`price_per_book`) VALUES (2,'Israel Post',   'Courier service',           3,  1);
INSERT INTO `second_hand_bookstore`.`delivery_type` (`delivery_type_id`,`compamy`,`d_type`,`price_per_kg`,`price_per_book`) VALUES (3,'Israel Post',   'Fast courier mail',         4,  2);
INSERT INTO `second_hand_bookstore`.`delivery_type` (`delivery_type_id`,`compamy`,`d_type`,`price_per_kg`,`price_per_book`) VALUES (4,'Xpress',        'Collecting point',          5,  3);
INSERT INTO `second_hand_bookstore`.`delivery_type` (`delivery_type_id`,`compamy`,`d_type`,`price_per_kg`,`price_per_book`) VALUES (5,'Xpress',        'Delivery guy to the house', 7,  4);

/*insert into delivery table*/

INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (1,'AN2350',  'Kaplan 33,      Tel Aviv',  'Delivered',       	  	   9,  2,  '2018-06-20');
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (2,'AN2353',  'HaArbaa 15,     Tel Aviv',  'Delivered',          	   9,  5,  '2018-06-20');
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (3,'AN2349',  'Sheinkin 31,    Tel Aviv',  'Delivered',  	 		   4,  2,  '2018-10-10');
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (4,'AN2348',  'Sheinkin 19,    Tel Aviv',  'Delivered',       		   4,  5,  '2018-10-10');
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (5,'AN2354',  'HaArbaa 15,     Tel Aviv',  'Delivered',         	   10, 3, '2019-01-11');
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (6,'AN2345',  'Rines 29,       Tel Aviv',  'Sent',        			   1,  1,  '2020-07-12');
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (7,'AN2351',  'Kaplan 33,      Tel Aviv',  'Arrive',        		   5,  4,  '2020-08-10');
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (8,'AN2352',  'HaArbaa 15,     Tel Aviv',  'Sent',  				   7,  1,  '2020-08-15');
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (9,'AN2346',  'Allenby 40,     Tel Aviv',  'Preparation',  		   3,  1,  null);
INSERT INTO `second_hand_bookstore`.`deliveries` (`delivery_id`,`traking_num`,`address`,`delivary_condition`,`purchase_client_id`,`delivery_type_id`,`delivery_date`) VALUES (10,'AN2347', 'ben yehuda 42,  Tel Aviv',  'Waiting for collection',  3,  3,  null);

/*insert into delivery_book_con table*/

INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (1,  4,   1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (2,  7,   1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (3,  3,   1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (4,  1,   1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (5, 6,   1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (6,  1,   2);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (6,  7,   1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (6,  11,  1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (6,  3,   2);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (7,  5,   1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (8,  10,  1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (9,  9,   2);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (9,  13,  1);
INSERT INTO `second_hand_bookstore`.`delivery_book` (`delivery_id`,`book_id`,`amount_of_books`) VALUES (10,  7,   1);

/*insert into orders table*/

INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (1,1,1,1,'Sold','2019-09-02','2019-09-28');
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (2,1,1,2,'Ordered','2019-11-02',null);
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (3,1,1,3,'Available','2020-05-02','2020-07-20');
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (4,1,2,3,'Ordered','2020-06-01',null);
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (5,1,1,8,'Available','2020-07-15','2020-07-20');
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (6,1,6,2,'Sold','2020-7-17','2020-7-20');
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (7,1,3,10,'Ordered','2020-07-22',null);
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (8,1,10,1,'Available','2020-07-24','2020-07-24');
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (9,1,3,2,'Sold','2020-07-28','2020-08-01');
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (10,1,4,4,'Available','2020-08-04','2020-08-06');
INSERT INTO `second_hand_bookstore`.`orders` (`order_id`,`amount_of_books`,`book_id`,`client_id`,`order_state`,`orderbooks_date`,`contact_date`) VALUES (11,1,2,1,'Available','2020-08-06','2020-08-09');
/*insert into payments table*/
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2018',1,5,200,100,1000,300,100,1100,80000,600);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2019',2,10,200,100,1000,300,100,1100,80000,600);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2019',3,11,200,120,1020,320,130,1140,80500,620);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2019',4,12,200,100,2000,300,100,1600,70000,1000);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2020',5,01,200,100,1900,300,100,1500,100000,200);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2020',6,02,200,100,1800,300,100,1300,19000,300);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2020',7,03,200,100,1800,300,100,1100,190000,400);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2020',8,04,200,100,1600,300,100,1800,100000,300);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2020',9,05,200,100,1500,300,100,1500,60000,100);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2020',10,06,200,100,1200,300,100,1200,68000,200);
INSERT INTO `second_hand_bookstore`.`payments` (`payment_year`,`payment_id`,`payment_month`,`property_tax`,`water`,`electricity`,`phone_num`,
`home_num`,`shipping`,`salary`,`various`) VALUES ('2020',11,07,200,100,1000,300,100,1000,70000,300);













/*
select * from `second_hand_bookstore`.`translators`;
select * from `second_hand_bookstore`.`autors`;
select * from `second_hand_bookstore`.`books`;
select * from `second_hand_bookstore`.`inventory`;
select * from `second_hand_bookstore`.`autor_con`;
select * from `second_hand_bookstore`.`translator_con`;

*/