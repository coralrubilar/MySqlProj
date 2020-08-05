/* 1 */
SELECT 
	bf.title_book As TitleBook, 
    concat(a.first_name,' ',a.last_name) AS AutorsName ,
	SUM(i.amount_warehouse_inventory) WarehouseInventory, 
    SUM(i.amount_store_inventory) AmountStore
FROM  inventory As i
JOIN   (books_features As bf, autors As a ,autors_books_features abf)                                                                    
	ON  (bf.books_features_id= abf.books_features_id 
		AND a.autor_id = abf.autor_id 
        AND abf.book_id = i.book_id) 
GROUP BY bf.title_book
HAVING  TitleBook = "The Laws of Human Nature";
		
/*2*/
SELECT *                              
FROM clients
ORDER BY join_date  LIMIT 1 ;

/*3*/	
SELECT        
	bf.title_book As TitleBook, ps.purchase_date As DateInTheStore                                     
FROM inventory As i
JOIN (books_features As bf, purchase_store As ps,autors_books_features abf)       
	ON (abf.books_features_id = bf.books_features_id 
		AND i.Book_id = abf.Book_id )                                            
WHERE i.amount_store_inventory + i.amount_warehouse_inventory > 0           
ORDER BY DateInTheStore  LIMIT 1;
 
/*4*/	
SELECT       
	bf.title_book As TitleBook, 
    concat(a.first_name,' ',a.last_name) AS AutorsName, 
    o.order_state, 
	o.orderbooks_date as OrederDate
FROM orders As o
JOIN (books_features As bf, autors As a, autors_books_features  abf )       
	ON (o.order_state = 'Ordered' 
		AND o.Book_id=abf.Book_id 
        AND bf.books_features_id = abf.books_features_id 
        AND a.autor_id = abf.autor_id)                                            
ORDER BY OrederDate;

/*5 */	
SELECT 
	bf.title_book As TitleBook, 
    concat(a.first_name,' ',a.last_name) AS AutorsName ,
	SUM(bc.amount_of_books) Sold
FROM  purchase_client As pc
JOIN   (books_features As bf, autors As a , book_client bc) 
INNER JOIN( SELECT  *
			FROM  autors_books_features
			GROUP BY book_id 
		   )abf 
	ON  (bf.books_features_id = abf.books_features_id 
		AND a.autor_id = abf.autor_id 
		AND abf.Book_id = bc.book_id 
        AND pc.purchase_client_id = bc.purchase_client_id)  
        GROUP BY AutorsName,TitleBook
HAVING  TitleBook='The Betrayal';

/*6*/	

SELECT 
	concat(a.first_name,' ',a.last_name) AS AutorsName,
	SUM(bc.amount_of_books) Sold
FROM purchase_client As pc
JOIN (books_features As bf, autors As a ,autors_books_features abf, book_client bc)                                                                    
	ON  (bf.books_features_id = abf.books_features_id 
		AND a.autor_id = abf.autor_id 
		AND abf.Book_id = bc.Book_id 
		AND pc.purchase_client_id=bc.purchase_client_id)  
WHERE pc.purchase_date BETWEEN CAST('2000-07-02'  AS DATE) AND CAST('2025-05-02' AS DATE)
GROUP BY AutorsName
ORDER BY Sold DESC LIMIT 1;

/*7*/

SELECT 
	concat(c.first_name,' ',c.last_name) CustomerName,
	SUM(bc.amount_of_books) AmountBuyBooks
FROM purchase_client As pc
JOIN (clients As c,book_client bc)                                                                    
	ON (c.client_id=pc.client_id 
		AND bc.purchase_client_id=pc.purchase_client_id)              
GROUP BY CustomerName
ORDER BY AmountBuyBooks DESC LIMIT 3;

/* 8 */
SELECT 
	abf.book_id,
	bf.title_book As TitleBook, 
	count(DISTINCT b.language_book) AmountLanguageTrnslate
FROM inventory i
JOIN (books AS b, autors_books_features abf,books_features As bf)                                                                    
	ON (b.book_id= abf.book_id 
		AND bf.books_features_id = abf.books_features_id 
        AND i.amount_store_inventory + amount_warehouse_inventory>0) 
GROUP BY TitleBook
ORDER BY AmountLanguageTrnslate  DESC  LIMIT 1;

-- /* 9 */
SELECT 
	concat(c.first_name,' ',c.last_name) AS CustomerName,
	pc.purchase_client_id  InvoiceNumber,
	bf.title_book As TitleBook, 
	amount_of_books AmountBuyBooks , 
	FLOOR(pc.total_price/amount_of_books)  PriceForEachBook,
    pc.total_price TotalPrice, 
	purchase_date DateBuy
FROM purchase_client As pc
JOIN (books_features As bf,clients As c,book_client bc, autors_books_features abf)                                                                    
	ON  (bf.books_features_id= abf.books_features_id 
		AND bc.book_id=abf.book_id 
        AND c.client_id=pc.client_id 
        AND bc.purchase_client_id=pc.purchase_client_id)              
HAVING CustomerName = 'coral rubilar';

/* 10 */

SELECT 
	orderbooks_date DateOrder, order_state,
	bf.title_book TitleBook
from orders o
JOIN (clients c,books_features as bf,autors_books_features as abf)
	on (o.client_id = c.client_id 
		AND o.Book_id=abf.Book_id 
        AND bf.books_features_id = abf.books_features_id)
WHERE c.first_name = 'coral' and c.last_name = 'rubilar'
ORDER BY DateOrder;

/*11*/

SELECT 
	dt.compamy Compamy,
	SUM(dt.price_per_kg *bf.weight + db.amount_of_books*dt.price_per_book) TotalPriceDelivery
FROM deliveries d  
JOIN (delivery_type AS dt, delivery_book AS db  ,books_features AS bf,autors_books_features abf)
	ON (db.delivery_id = d.delivery_id 
        AND abf.book_id=db.book_id
        AND bf.books_features_id = abf.books_features_id 
        AND dt.delivery_type_id= d.delivery_type_id )
WHERE(d.delivery_id=6)
GROUP BY Compamy;

/* 12 */

SELECT 
	GROUP_CONCAT(d.delivery_id) IDDelivery,
    d.purchase_client_id IDPurchase,
	GROUP_CONCAT(d.traking_num) TrakingNum,
    GROUP_CONCAT(d.address) Adress,
    GROUP_CONCAT(d.delivary_condition) DelivaryCondition,
    GROUP_CONCAT(dt.d_type) TypeOfDelivery,
    GROUP_CONCAT(d.delivery_date) DeliveryDate,
    GROUP_CONCAT(concat(c.first_name,' ',c.last_name)) CustomerName,
    GROUP_CONCAT(c.home_num) HomeNum,
    GROUP_CONCAT(c.phone_num) PhoneNum
FROM delivery_type dt 
JOIN (clients AS c , 
	 purchase_client pc, deliveries d)
	 INNER JOIN( SELECT  *
			FROM  delivery_book dbc
			GROUP BY dbc.delivery_id
		   )dbc
	ON (dt.delivery_type_id=d.delivery_type_id 
		AND c.client_id = pc.client_id 
        AND pc.purchase_client_id=d.purchase_client_id
		AND dbc.delivery_id=d.delivery_id)
GROUP BY IDPurchase
HAVING COUNT(distinct d.delivery_id) > 1 
ORDER BY IDDelivery, d.purchase_client_id;

/* 12*/

SELECT 
	d.delivery_id IDDelivery,
    d.purchase_client_id IDPurchase,
	d.traking_num TrakingNum,
    d.address Adress,
    d.delivary_condition DelivaryCondition,
	dt.d_type TypeOfDelivery,
    d.delivery_date DeliveryDate,
    concat(c.first_name,' ',c.last_name) CustomerName,
    c.home_num HomeNum,
    c.phone_num PhoneNum
FROM delivery_type dt 
JOIN (clients AS c , 
	 purchase_client pc, deliveries d)
	 INNER JOIN( SELECT  *
			FROM  delivery_book dbc
			GROUP BY dbc.delivery_id
		   )dbc
	ON (dt.delivery_type_id=d.delivery_type_id 
		AND c.client_id = pc.client_id 
        AND pc.purchase_client_id=d.purchase_client_id
		AND dbc.delivery_id=d.delivery_id)
GROUP BY IDPurchase
HAVING COUNT(distinct d.delivery_id) > 1 AND CustomerName= 'inbar lev'
ORDER BY IDDelivery, d.purchase_client_id;


/* 13 */

SELECT 
	traking_num NumberTraking, 
    d.delivary_condition StatusDelivery
FROM   deliveries as d  
WHERE d.traking_num='AN2345';

/* 14*/

SELECT 
	MONTH(d.delivery_date) MonthCheckDelivery, 
    count(distinct d.delivery_id) NumberOfDelivery
FROM deliveries d
JOIN delivery_type dt
	on d.delivery_type_id = dt.delivery_type_id
WHERE dt.compamy = 'Xpress' AND YEAR(d.delivery_date)=YEAR(CURDATE()) AND MONTH(d.delivery_date) = 8 ;

/* 15*/

SELECT 
	MONTH(p.purchase_date) MonthCheckPay,
	sum(p.total_price) AS TotalMoneyPayBybit 
From purchase_client p 
WHERE p.purchase_type='Bit' AND YEAR(p.purchase_date)=YEAR(CURDATE()) AND MONTH(p.purchase_date)=8 ;

/* 16 */

SELECT *
FROM purchase_client AS pc 
Where pc.purchase_date >= CURDATE() - INTERVAL 12 MONTH 
	AND (SELECT AVG(purchase_client.total_price) 
		FROM purchase_client) < pc.total_price;

/* 17 */

SELECT  
	dt.compamy, count(*)  
from deliveries d
JOIN delivery_type dt
	ON d.delivery_type_id = dt.delivery_type_id
WHERE  d.delivery_date >= CURDATE() - INTERVAL 12 MONTH AND (dt.compamy='Xpress' or dt.compamy='Israel Post')
group by  dt.compamy;

/* 18 */
SELECT 
	d.delivery_id IDDelivery,
    d.purchase_client_id IDPurchase,
	d.traking_num TrakingNum,
    d.address Adress,
    d.delivary_condition DelivaryCondition,
    d.delivery_date DeliveryDate,
    concat(c.first_name,' ',c.last_name) CustomerName,
    c.home_num HomeNum,
    c.phone_num PhoneNum,
	bf.title_book As TitleBook,
     COUNT(DISTINCT b.publishe_year ) AmountEditions
FROM deliveries d
JOIN (books AS b,autors AS a, clients AS c , 
	 books_features AS bf ,purchase_client pc,delivery_book db )
INNER JOIN( SELECT  *
			FROM  autors_books_features
			GROUP BY book_id 	
		   )abf 
	ON (db.book_id = b.book_id 
		AND c.client_id = pc.client_id 
        AND a.autor_id=abf.autor_id
		AND abf.book_id = b.book_id 
        AND abf.books_features_id = bf.books_features_id 
        AND pc.purchase_client_id=d.purchase_client_id
		AND db.delivery_id=d.delivery_id)
GROUP BY TitleBook
HAVING COUNT(DISTINCT b.publishe_year  ) > 1
ORDER BY IDDelivery, d.purchase_client_id;

/* 19 */

SELECT * 
FROM clients c
JOIN purchase_client pc 
	ON  c.client_id = pc.client_id
WHERE pc.purchase_date < CURDATE() - INTERVAL 24 MONTH;

/* 20 */

SELECT 
	concat(c.first_name,' ',c.last_name) CustomerName,
    o.contact_date ConantDate, 
	DATE_SUB(CURDATE(), INTERVAL 14 DAY) Contant14DaysAgo
FROM orders o 
JOIN clients c
	ON o.client_id = c.client_id 
WHERE  o.order_state='Available'
HAVING ConantDate <= Contant14DaysAgo ;

-- /*21 */
SELECT  
	CURDATE() - INTERVAL 12 MONTH FromDate,
	CURDATE() UntilDate,Year(pc.purchase_date) YearCheck,
    MONTHNAME(pc.purchase_date ) MonthCheck,
    (i.amount_warehouse_inventory+count(bc.amount_of_books)-count(bc.amount_of_books))/DAY(LAST_DAY(pc.purchase_date)) AverageNumOfBook
FROM inventory AS i
JOIN( book_client bc,purchase_store pstore, purchase_client pc)
group by MonthCheck;

/*22*/

SELECT 	
	SUM(pstore.amount_of_books) TotalBooksPurchased,
	SUM(pstore.total_price) TotalPrice
FROM purchase_store pstore 
WHERE pstore.purchase_date >= '2018-05-02' AND YEAR(pstore.purchase_date) <= '2020-08-01';


/*23*/


SELECT 
	MONTH(pstore.purchase_date) MonthCheck,
    YEAR(pstore.purchase_date) YearCheck,
	SUM(pc.total_price)- SUM(pstore.total_price) 
TotalProfit
FROM purchase_store pstore 
JOIN purchase_client pc
WHERE MONTH(pstore.purchase_date) ='05'  AND MONTH(pc.purchase_date) = '05'
	  AND  YEAR(pstore.purchase_date) = '2018' AND YEAR(pc.purchase_date)= '2018' ;

/* 24 */

SELECT  
	CURDATE() - INTERVAL 12 MONTH FromDate,
	CURDATE() UntilDate,Year(pc.purchase_date) YearCheck,
    MONTHNAME(pc.purchase_date) MonthCheck,
    count(pc.purchase_client_id)/DAY(LAST_DAY(pc.purchase_date)) AverageTransaction
FROM purchase_client pc
WHERE CURDATE() - INTERVAL 12 MONTH < pc.purchase_date  AND pc.purchase_date < 	CURDATE() 

GROUP BY  MonthCheck
ORDER BY pc.purchase_date;

/* 25 */

SELECT
	w.worker_id ,  
	concat(w.first_name ,' ',w.last_name ) WorkerName,
	wh.total_hours TotalHours,
	w.hourly_wage HourlyWage,
	w.hourly_wage * wh.total_hours GrossSalary
FROM workers w
JOIN work_hours wh
	ON w.worker_id = wh.worker_id
WHERE w.worker_id=1 AND wh.work_year=YEAR(CURDATE()) AND wh.work_month = 07;



/* 26 */
SELECT 
	p.worker_id ,  
    concat(w.first_name ,' ',w.last_name ) WorkerName ,
    count(*)  NumberTranslations
FROM purchase_client p 
JOIN workers w
	on w.worker_id = p.worker_id
WHERE  YEAR(p.purchase_date) = '2019' AND MONTH(p.purchase_date)='08'
GROUP BY worker_id
ORDER BY worker_id LIMIT 1;