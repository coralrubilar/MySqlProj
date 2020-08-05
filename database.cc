/*
 * ===================================================================
 *
 *       Filename:  database.cc
 *
 *    Description:  Definition of MySQL Class for accessing database
 *
 *        Created:  Friday 22 February 2013 02:07:49  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  Include mysql.h file local header file(declaration of class)
 *------------------------------------------------------------------*/

#include "database.h"
#include <iostream>
#include <fstream>
#include <sstream>      // std::stringstream



/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: MySQL()
 * Description:  Constructor to initialize database conectivity
 *--------------------------------------------------------------------
 */

MySQL :: MySQL()
{
    connect = mysql_init(NULL);
    if ( !connect )
    {
        cout << "MySQL Initialization Failed";
    }   

    connect = mysql_real_connect(connect, SERVER, USER, PASSWORD, DATABASE, 0,NULL,0);
    
    if ( connect )
    {
        cout << "Connection Succeeded\n";
    }
    
    else
    {
        cout << "Connection Failed\n";
    }
}

/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: ShowTables()
 * Description:  Show tables in database
 *--------------------------------------------------------------------
 */

using namespace std;


bool dateValidat(string date) {
	if (date.size() != 10 || date[4] != '-' || date[7] != '-' )
		return false;

	string delimiter = "-";
	string year = date.substr(0, 4), month = date.substr(5,2), day = date.substr(8,2);
	if (std::stoi(month) < 0 || std::stoi(month) > 12 || std::stoi(day) < 0 || std::stoi(day) > 30 || std::stoi(year)< 0)
		return false;

	return true;
}



void MySQL::query_1() {

	string book_name;
	cout << "enter book name->";
	cin.ignore(MAX, '\n');
	getline(cin, book_name);


	string str = "SELECT ";
	str += "bf.title_book As TitleBook, ";
	str += "concat(a.first_name,' ',a.last_name) AS AutorsName, ";
	str += "SUM(i.amount_warehouse_inventory) WarehouseInventory, ";
	str += "SUM(i.amount_store_inventory) AmountStore ";
	str += "FROM  inventory As i ";
	str += "JOIN (books_features As bf, autors As a ,autors_books_features abf) ";
	str += "ON  (bf.books_features_id= abf.books_features_id ";
	str += "AND a.autor_id = abf.autor_id ";
	str += "AND abf.book_id = i.book_id) ";
	str += "GROUP BY AutorsName ";
	str += "HAVING  TitleBook = '"+book_name+"' ";
	mysql_query(connect, str.c_str());

	i = 0;

	res_set = mysql_store_result(connect);

	cout << "result : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "book not found" << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}

void MySQL::query_2() {
	mysql_query(connect, "SELECT  * FROM  clients ORDER BY   join_date  limit 1");

	i = 0;

	res_set = mysql_store_result(connect);

	cout << "the oldest customer : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}

void MySQL::query_3() {

		string str = "SELECT ";
		str += "bf.title_book As TitleBook, ps.purchase_date As DateInTheStore ";
		str += "FROM inventory As i ";
		str += "JOIN (books_features As bf, purchase_store As ps,autors_books_features abf) ";
		str += "ON (abf.books_features_id = bf.books_features_id ";
		str += "AND i.Book_id = abf.Book_id ) ";
		str += "WHERE i.amount_store_inventory + i.amount_warehouse_inventory > 0 ";
		str += "ORDER BY DateInTheStore  LIMIT 1";


	mysql_query(connect, str.c_str());
	i = 0;
	res_set = mysql_store_result(connect);

	cout << "the oldest book : " << endl;
	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		if (row[i] == NULL)
		{
			cout << "0" << endl;
			continue;
		}
		cout << row[i] << endl;
	}

}

void MySQL::query_4() {
	string str = "SELECT ";
	str += "bf.title_book As TitleBook, ";
	str += "concat(a.first_name,' ',a.last_name) AS AutorsName, ";
	str += "o.order_state, ";
	str += "o.orderbooks_date as OrederDate ";
	str += "FROM orders As o ";
	str += "JOIN (books_features As bf, autors As a, autors_books_features  abf )  ";
	str += "ON (o.order_state = 'Ordered' ";
	str += "AND o.Book_id=abf.Book_id ";
	str += "AND bf.books_features_id = abf.books_features_id ";
	str += "AND a.autor_id = abf.autor_id) ";
	str += "ORDER BY OrederDate ";


	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "the order list : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "none" << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}

void MySQL::query_5() {

	
	string book_name;
	cout << "enter book name->";
	cin.ignore(MAX, '\n');
	getline(cin, book_name);


	string str = "SELECT ";
	str += "bf.title_book As TitleBook, ";
	str += "concat(a.first_name,' ',a.last_name) AS AutorsName , ";
	str += "SUM(bc.amount_of_books) Sold ";
	str += "FROM  purchase_client As pc ";
	str += "JOIN   (books_features As bf, autors As a , book_client bc) ";
	str += "INNER JOIN( SELECT  * ";
	str += "FROM  autors_books_features ";
	str += "GROUP BY book_id ";
	str += ")abf ";
	str += "ON  (bf.books_features_id = abf.books_features_id ";
	str += "AND a.autor_id = abf.autor_id ";
	str += "AND abf.Book_id = bc.book_id ";
	str += "AND pc.purchase_client_id = bc.purchase_client_id) ";
	str += "GROUP BY AutorsName,TitleBook ";
	str += "HAVING  TitleBook = '"+book_name+"'";

	mysql_query(connect, str.c_str());

	i = 0;

	res_set = mysql_store_result(connect);

	cout << "result : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);
	if (num_rows == 0) {
		cout << "book not found ";
		return;
	}


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				cout << "book not found";
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}


void MySQL::query_6() {

	string D1, D2;
	cout << "Enter from date 'YYYY-MM-DD' : " << endl;
	cin >> D1;
	cout << "Enter to date 'YYYY-MM-DD' : " << endl;
	cin >> D2;
	if (!dateValidat(D1) || !dateValidat(D2)) {
		cout << "invalid date or format. please insert date in format yyyy-mm-tt. for example 2020-02-12" << endl;
		return;
	}


	string str = "SELECT ";
	str += "concat(a.first_name,' ',a.last_name) AS AutorsName, ";
	str += "SUM(bc.amount_of_books) Sold ";
	str += "FROM purchase_client As pc ";
	str += "JOIN (books_features As bf, autors As a ,autors_books_features abf, book_client bc) ";
	str += "ON  (bf.books_features_id = abf.books_features_id ";
	str += "AND a.autor_id = abf.autor_id ";
	str += "AND abf.Book_id = bc.Book_id ";
	str += "AND pc.purchase_client_id=bc.purchase_client_id) ";
	str += "WHERE pc.purchase_date BETWEEN CAST('" + D1 + "'  AS DATE) AND CAST('" + D2 + "' AS DATE)";
	str += "GROUP BY AutorsName ";
	str += "ORDER BY Sold DESC LIMIT 1";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << " The most reader author between two dates : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "autor not found"<<endl;
		return;
	}


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}

void MySQL::query_7() {

	string str = "SELECT ";
	str += "concat(c.first_name,' ',c.last_name) CustomerName, ";
	str += "SUM(bc.amount_of_books) AmountBuyBooks ";
	str += "FROM purchase_client As pc ";
	str += "JOIN (clients As c,book_client bc) ";
	str += "ON (c.client_id=pc.client_id ";
	str += "AND bc.purchase_client_id=pc.purchase_client_id) ";
	str += "GROUP BY CustomerName ";
	str += "ORDER BY AmountBuyBooks DESC LIMIT 3";
	
	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "List of the three customers who purchased the most books : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "customers not found" << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}

void MySQL::query_8() {

	string str = "SELECT ";
	str += "abf.book_id, ";
	str += "bf.title_book As TitleBook, ";
	str += "count(DISTINCT b.language_book) AmountLanguageTrnslate ";
	str += "FROM inventory i ";
	str += "JOIN (books AS b, autors_books_features abf,books_features As bf) ";
	str += "ON (b.book_id= abf.book_id ";
	str += "AND bf.books_features_id = abf.books_features_id ";
	str += "AND i.amount_store_inventory + amount_warehouse_inventory>0) ";
	str += "GROUP BY TitleBook ";
	str += "ORDER BY AmountLanguageTrnslate  DESC  LIMIT 1";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "the book with the largest number of translations currently in stock : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "book not found" << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}


void MySQL::query_9() {


	string client_name;
	cout << "enter client name->";
	cin.ignore(MAX, '\n');
	getline(cin, client_name);
	cout << client_name;

	string str = "SELECT ";
	str += "concat(c.first_name,' ',c.last_name) AS CustomerName, ";
	str += "pc.purchase_client_id  InvoiceNumber, ";
	str += "bf.title_book As TitleBook, ";
	str += "amount_of_books AmountBuyBooks , ";
	str += "FLOOR(pc.total_price/amount_of_books)  PriceForEachBook, ";
	str += "pc.total_price TotalPrice, ";
	str += "purchase_date DateBuy ";
	str += "FROM purchase_client As pc ";
	str += "JOIN (books_features As bf,clients As c,book_client bc, autors_books_features abf) ";
	str += "ON  (bf.books_features_id= abf.books_features_id ";
	str += "AND bc.book_id=abf.book_id  ";
	str += "AND c.client_id=pc.client_id ";
	str += "AND bc.purchase_client_id=pc.purchase_client_id) ";
	str += "HAVING CustomerName = '"+client_name+"' ";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "Purchasing history of a particular customer: " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);
	
	if (num_rows == 0) {
		cout << "customer not found" << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}



void MySQL::query_10() {
	
	string first_name;
	cout << "enter client first name ('first name')->";
	cin >> first_name;
	string last_name;
	cout << "enter client last name ('last name')->";
	cin >> last_name;
	

	string str = "SELECT ";
	str += "orderbooks_date DateOrder, order_state, ";
	str += "bf.title_book TitleBook ";
	str += "from orders o ";
	str += "JOIN (clients c,books_features as bf,autors_books_features as abf) ";
	str += "on (o.client_id = c.client_id ";
	str += "AND o.Book_id=abf.Book_id ";
	str += "AND bf.books_features_id = abf.books_features_id) ";
	str += "WHERE c.first_name = "+first_name+" and c.last_name = " + last_name + " ";
	str += "ORDER BY DateOrder";


	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "Order history of a particular customer : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "customer not found" << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}


void MySQL::query_11() {


	string delivery_id;
	cout << "enter delivery id->";
	cin.ignore(MAX, '\n');
	getline(cin, delivery_id);
	cout << delivery_id;

	if (std::stoi(delivery_id) < 0) {
		cout << "You entered an incorrect number"<<endl;
		return;
	}

	string str = "SELECT ";
	str += "dt.compamy Compamy, ";
	str += "SUM(dt.price_per_kg *bf.weight + db.amount_of_books*dt.price_per_book) TotalPriceDelivery ";
	str += "FROM deliveries d ";
	str += "JOIN (delivery_type AS dt, delivery_book AS db  ,books_features AS bf,autors_books_features abf) ";
	str += "ON (db.delivery_id = d.delivery_id ";
	str += "AND abf.book_id=db.book_id ";
	str += "AND bf.books_features_id = abf.books_features_id ";
	str += "AND dt.delivery_type_id= d.delivery_type_id ) ";
	str += "WHERE(d.delivery_id='"+ delivery_id +"') ";
	str += "GROUP BY Compamy";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "Shipping cost : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "delivery not found" << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}


void MySQL::query_12() {
	string client_name;
	cout << "enter client name>";
	cin.ignore(MAX, '\n');
	getline(cin, client_name);


	string str = "SELECT ";
	str += "d.delivery_id IDDelivery, ";
	str += "d.purchase_client_id IDPurchase, ";
	str += "d.traking_num TrakingNum, ";
	str += "d.address Adress, ";
	str += "d.delivary_condition DelivaryCondition, ";
	str += "dt.d_type TypeOfDelivery, ";
	str += "d.delivery_date DeliveryDate, ";
	str += "concat(c.first_name,' ',c.last_name) CustomerName, ";
	str += "c.home_num HomeNum, ";
	str += "c.phone_num PhoneNum ";
	str += "FROM delivery_type dt ";
	str += "JOIN (clients AS c , ";
	str += "purchase_client pc, deliveries d) ";
	str += "INNER JOIN( SELECT  * ";
	str += "FROM  delivery_book dbc ";
	str += "GROUP BY dbc.delivery_id ";
	str += ")dbc ";
	str += "ON (dt.delivery_type_id=d.delivery_type_id ";
	str += "AND c.client_id = pc.client_id ";
	str += "AND pc.purchase_client_id=d.purchase_client_id ";
	str += "AND dbc.delivery_id=d.delivery_id) ";
	str += "GROUP BY IDPurchase ";
	str += "HAVING COUNT(distinct d.delivery_id) > 1 AND CustomerName= '"+client_name +"' ";
	str += "ORDER BY IDDelivery, d.purchase_client_id ";




	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "Is customer split shipments and their data : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "none"<<endl;
	}


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}

void MySQL::query_13() {

	string traking_num;
	cout << "enter traking numer->";
	cin >> traking_num;



	string str = "SELECT ";
	str += "traking_num NumberTraking, ";
	str += "d.delivary_condition StatusDelivery ";
	str += "FROM   deliveries as d ";
	str += "WHERE d.traking_num='"+traking_num+"' ";


	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "current status of a particular shipment : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "Delivery not found" << endl;
	}


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}






void MySQL::query_14() {


	string month;
	cout << "Enter month 'MM' : " << endl;
	cin >> month;
	if (std::stoi(month) < 0 || std::stoi(month) > 12) {
		cout << "Date not possible" << endl;
		return;
	}


	string str = "select ";
	str += "MONTH(d.delivery_date) MonthCheckDelivery, ";
	str += "count(distinct d.delivery_id) NumberOfDelivery ";
	str += "FROM deliveries d ";
	str += "JOIN delivery_type dt ";
	str += "on d.delivery_type_id = dt.delivery_type_id ";
	str += "WHERE dt.compamy = 'Xpress' AND YEAR(d.delivery_date)=YEAR(CURDATE()) AND MONTH(d.delivery_date) = " + month + " ";

	mysql_query(connect, str.c_str());
	i = 0;
	res_set = mysql_store_result(connect);

	cout << "amount of shipments made by Xpress in a particular month : " << endl;



	while (((row = mysql_fetch_row(res_set)) != NULL))
	{
		if (row[i] == NULL)
		{
			cout << "0" << endl;
			continue;
		}
		cout << row[i] << endl;
	}
	
}

void MySQL::query_15() {

	string month;
	cout << "Enter month 'MM' : " << endl;
	cin >> month;


	if (std::stoi(month) < 0 || std::stoi(month) > 12) {
		cout << "Date not possible" << endl;
		return;
	}


	string str = "select ";
	str += "MONTH(p.purchase_date) MonthCheckPay, ";
	str += "sum(p.total_price) AS TotalMoneyPayBybit ";
	str += "From purchase_client p  ";
	str += "WHERE p.purchase_type='Bit' AND YEAR(p.purchase_date)=YEAR(CURDATE()) AND MONTH(p.purchase_date)=" + month + " ";

	mysql_query(connect, str.c_str());
	i = 0;
	res_set = mysql_store_result(connect);

	cout << "total money transferred to the store account via the Bit app in a particular month : " << endl;


	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);


	if (num_rows == 0) {
		cout << "none" << endl;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}

}


void MySQL::query_16() {

	string str = "SELECT * ";
	str += "FROM purchase_client AS pc ";
	str += "Where pc.purchase_date >= CURDATE() - INTERVAL 12 MONTH ";
	str += "AND (SELECT AVG(purchase_client.total_price) ";
	str += "FROM purchase_client) < pc.total_price";

	mysql_query(connect, str.c_str());
	i = 0;
	res_set = mysql_store_result(connect);

	cout << "Last year's transactions with profit higher than average : " << endl;
	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);



	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}

}

void MySQL::query_17() {

	string str = "select dt.compamy , count(*) from deliveries d ";
	str += "JOIN delivery_type dt ";	
	str += "on ";
	str += "d.delivery_type_id = dt.delivery_type_id ";
	str += "WHERE d.delivery_date >= CURDATE() - INTERVAL 12 MONTH AND (dt.compamy='Xpress' or dt.compamy='Israel Post') ";
	str += "group by dt.compamy";

	mysql_query(connect, str.c_str());

	i = 0;

	res_set = mysql_store_result(connect);

	cout << " Number of shipps made by Israel post and Xpress at the last year : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}

void MySQL::query_18() {

	string str = "SELECT ";
	str += "d.delivery_id IDDelivery, ";
	str += "d.purchase_client_id IDPurchase, ";
	str += "d.traking_num TrakingNum, ";
	str += "d.address Adress, ";
	str += "d.delivary_condition DelivaryCondition, ";
	str += "d.delivery_date DeliveryDate, ";
	str += "concat(c.first_name,' ',c.last_name) CustomerName, ";
	str += "c.home_num HomeNum, ";
	str += "c.phone_num PhoneNum, ";
	str += "bf.title_book As TitleBook, ";
	str += "COUNT(DISTINCT b.publishe_year ) AmountEditions ";
	str += "FROM deliveries d ";
	str += "JOIN (books AS b,autors AS a, clients AS c , ";
	str += "books_features AS bf ,purchase_client pc,delivery_book db ) ";
	str += "INNER JOIN( SELECT  * ";
	str += "FROM  autors_books_features ";
	str += "GROUP BY book_id ";
	str += ")abf ";
	str += "ON (db.book_id = b.book_id ";
	str += "AND c.client_id = pc.client_id ";
	str += "AND a.autor_id=abf.autor_id ";
	str += "AND abf.books_features_id = bf.books_features_id ";
	str += "AND pc.purchase_client_id=d.purchase_client_id ";
	str += "AND db.delivery_id=d.delivery_id) ";
	str += "GROUP BY TitleBook ";
	str += "HAVING COUNT(DISTINCT b.publishe_year  ) > 1 ";
	str += "ORDER BY IDDelivery, d.purchase_client_id";

	mysql_query(connect, str.c_str());
	i = 0;
	res_set = mysql_store_result(connect);

	cout << "Last year's transactions with profit higher than average : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}

}



void MySQL::query_19() {

	string str = "select* from clients c ";
	str += "inner join purchase_client pc ";
	str += "on c.client_id = pc.client_id ";
	str += "where pc.purchase_date < CURDATE() - INTERVAL 24 MONTH";


	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "Customers that didn't buy at the last 24 months : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "none" << endl;
		return;
	}
	
	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}



void MySQL::query_20() {

	string str = "select concat(c.first_name,' ',c.last_name) CustomerName, ";
	str += "o.contact_date ConantDate, ";
	str += "DATE_SUB(CURDATE(), INTERVAL 14 DAY) Contant14DaysAgo ";
	str += "FROM orders o ";
	str += "JOIN clients c ";
	str += "ON o.client_id = c.client_id ";
	str += "WHERE  o.order_state='Available' ";
	str += "HAVING ConantDate <= Contant14DaysAgo ";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "Customers orders that didn't arrive to take their books : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "none" << endl;
		return;
	}
	

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}



void MySQL::query_21() {

	string str = "SELECT ";
	str += "CURDATE() - INTERVAL 12 MONTH FromDate, ";
	str += "CURDATE() UntilDate,Year(pc.purchase_date) YearCheck, ";
	str += "MONTHNAME(pc.purchase_date ) MonthCheck, ";
	str += "(i.amount_warehouse_inventory+count(bc.amount_of_books)-count(bc.amount_of_books)) AverageNumOfBook ";
	str += "FROM inventory AS i ";
	str += "JOIN( book_client bc,purchase_store pstore, purchase_client pc) ";
	str += "group by MonthCheck ";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "Customers orders that didn't arrive to take their books : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "none" << endl;
		return;
	}


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}


void MySQL::query_22() {
	
	string D1, D2;
	cout << "Enter from date 'YYYY-MM-DD' : " << endl;
	cin >> D1;
	cout << "Enter to date 'YYYY-MM-DD' : " << endl;
	cin >> D2;
	if (!dateValidat(D1) || !dateValidat(D2)) {
		cout << "invalid date or format. please insert date in format yyyy-mm-tt. for example 2020-02-12" << endl;
		return;
	}


	string str = "SELECT ";
	str += "SUM(pstore.amount_of_books) TotalBooksPurchased, ";
	str += "SUM(pstore.total_price) TotalPrice ";
	str += "FROM purchase_store pstore ";
	str += "WHERE pstore.purchase_date >= '"+D1+"' AND YEAR(pstore.purchase_date) <= '"+D2+"' ";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "Number of books yad2 bought between dates and their sum amount : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "none" << endl;
		return;
	}

	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}

void MySQL::query_23() {

	string month,year;
	cout << "Enter year 'YYYY' : " << endl;
	cin >> year;
	cout << "Enter month 'MM' : " << endl;
	cin >> month;
	if (std::stoi(year) < 1000 || std::stoi(month) < 0 || std::stoi(month) > 12) {
		cout << "Date not possible" << endl;
		return;
	}



	string str = "SELECT ";
	str += "MONTH(pstore.purchase_date) MonthCheck, ";
	str += "YEAR(pstore.purchase_date) YearCheck, ";
	str += "SUM(pc.total_price)- SUM(pstore.total_price) TotalProfit ";
	str += "FROM purchase_store pstore ";
	str += "JOIN purchase_client pc ";
	str += "WHERE MONTH(pstore.purchase_date) ='"+month+"'  AND MONTH(pc.purchase_date) = '"+month+"' ";
	str += "AND  YEAR(pstore.purchase_date) = '"+year+"' AND YEAR(pc.purchase_date)= '"+year+"' ";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << "The profit of second-hand book store in specific month : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);




	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}



void MySQL::query_24() {


	string str = "SELECT ";
	str += "CURDATE() - INTERVAL 12 MONTH FromDate, ";
	str += "CURDATE() UntilDate,Year(pc.purchase_date) YearCheck, ";
	str += "MONTHNAME(pc.purchase_date) MonthCheck, ";
	str += "count(pc.purchase_client_id)/DAY(LAST_DAY(pc.purchase_date)) AverageTransaction ";
	str += "FROM purchase_client pc ";
	str += "WHERE CURDATE() - INTERVAL 12 MONTH < pc.purchase_date  AND pc.purchase_date < 	CURDATE()";
	str += "GROUP BY  MonthCheck ";
	str += "ORDER BY pc.purchase_date";

	mysql_query(connect, str.c_str());
	i = 0;

	res_set = mysql_store_result(connect);

	cout << " Average monthly cross-sectional transactions : " << endl;

	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);
	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}



void MySQL::query_25() {

	string month, worker_id;
	cout << "Enter worker id : " << endl;
	cin >> worker_id;
	cout << "Enter month 'MM' : " << endl;
	cin >> month;
	if (std::stoi(month) < 0 || std::stoi(month) > 12) {
		cout << "Date not possible" << endl;
		return;
	}


	string str = "SELECT ";
	str += "w.worker_id, ";
	str += "concat(w.first_name, ' ', w.last_name) WorkerName, ";
	str += "wh.total_hours TotalHours, ";
	str += "w.hourly_wage HourlyWage, ";
	str += "w.hourly_wage* wh.total_hours GrossSalary ";
	str += "FROM workers w ";
	str += "JOIN work_hours wh ";
	str += "on w.worker_id = wh.worker_id ";
	str += "WHERE w.worker_id = "+worker_id+" AND wh.work_year = YEAR(CURDATE()) AND wh.work_month = "+month+" ";

	mysql_query(connect, str.c_str());
	i = 0;
	res_set = mysql_store_result(connect);

	cout << " Bruto salary of empoleey : " << endl;


	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "worker data not found" << endl;
	}


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}

}


void MySQL::query_26() {

	string month,year;
	cout << "Enter month 'MM' : " << endl;
	cin >> month;
	cout << "Enter month 'YYYY' : " << endl;
	cin >> year;


	if (std::stoi(year) < 1000 ||std::stoi(month) < 0 || std::stoi(month) > 12) {
		cout << "Date not possible" << endl;
		return;
	}

	string str = "select p.worker_id ,";
	str += "concat(w.first_name ,' ',w.last_name ) WorkerName , ";
	str += "count(*)  NumberTranslations ";
	str += "FROM purchase_client p ";
	str += "JOIN workers w ";
	str += "on w.worker_id = p.worker_id ";
	str += "WHERE  YEAR(p.purchase_date) = '"+year+"' AND MONTH(p.purchase_date)='"+month+"' ";
	str += "GROUP BY worker_id ";
	str += "ORDER BY worker_id LIMIT 1";


	mysql_query(connect, str.c_str());

	i = 0;
	res_set = mysql_store_result(connect);


	cout << "  seller with the most trades in month : " << endl;


	unsigned int num_rows = mysql_num_rows(res_set);
	unsigned int num_cols = mysql_num_fields(res_set);

	if (num_rows == 0) {
		cout << "none" << endl;
	}


	while (((row = mysql_fetch_row(res_set)) != NULL)) {
		for (int i = 0; i < num_cols; i++) {
			if (row[i] == NULL)
			{
				continue;
			}
			cout << row[i] << " ";
		}
		cout << endl;
	}
}





/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: ~MySQL()
 * Description:  Destructor of MySQL class for closing mysql
 *               connection
 *--------------------------------------------------------------------
 */

MySQL :: ~MySQL()
{
    mysql_close (connect);
}
