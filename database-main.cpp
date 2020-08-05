/*
 * ===================================================================
 *
 *       Filename:  database-main.cpp
 *
 *    Description:  Main Method
 *
 *        Created:  Thursday 28 February 2013 10:53:59  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  \mainpage MySQL Connectivity with C++
 *
 *  This is a working code example of using C++ to interface with MySQL.
 *  Steps:                                                                
 *                                                                                                                        
 *  \li Download this code \n
 *      $ git clone https://github.com/megha55/mysql-with-cpp.git
 *
 *  \li For installing MySQL Connector for C++ \n                     
 *      $ make install 
 *
 *  \li Change database details in database-detail.h file.
 *                                                                         
 *  \li To run example \n                                              
 *      $ make 
 * 
 *------------------------------------------------------------------*/

/**-------------------------------------------------------------------
 *  Include required header files
 *------------------------------------------------------------------*/
 
#include "database.h"


void maneger_manu();
void worker_manu();

int main(void){
	int choice = 0;

	while (choice != 3) {
		cout << endl << endl << endl << endl
			<< "*****************************************************************************" << endl
			<< " Welcome to our second-hand book store. Please choose one of the following:" << endl
			<< "*****************************************************************************" << endl
			<< " 1) Manager menu ." << endl
			<< " 2) Worker menu ." << endl
			<< " 3) Exit ." << endl
			<< "******************************************************************************" << endl
			<< " Your Choice:> ";
		cin >> choice;
		switch (choice) {

		case 1: {
			maneger_manu();
			break;
		}

		case 2: {
			worker_manu();
			break;
		}
		case 3: {
			cout << "Have a nice day!!\nGoodbye!" << endl;
			exit(0);
			break;
		}
		default: {
			cout << "invalid choice" << endl;
			choice = 42;
			cin.clear();
			break;
		}

		}

	}
}



void maneger_manu(){

	MySQL Mysql;

	string pass_maneger = "1234";
	string pass_enterd;
	cout << "enter password ->" << endl;
	cin >> pass_enterd;

	if (pass_enterd != pass_maneger) {
		cout << "Incorrect password"<<endl;
		return;
	}


	int choice = 0;
	while (1) {
		cout << endl << endl << endl << endl
			<< "*****************************************************************************" << endl
			<< " Welcome to our Manager menu. Please choose one of the following:" << endl
			<< "*****************************************************************************" << endl
			<< " 1) Check if a particular book is in stock." << endl
			<< " 2) Who is the oldest customer." << endl
			<< " 3) Who is the oldest book." << endl
			<< " 4) Displays the order list." << endl
			<< " 5) Several copies of a particular book are sold by the store." << endl
			<< " 6) Who is The most reader author between two dates." << endl
			<< " 7) List of the three customers who purchased the most books." << endl
			<< " 8) Who is the book with the largest number of translations currently in stock." << endl
			<< " 9) Purchasing history of a particular customer." << endl
			<< " 10) Order history of a particular person." << endl
			<< " 11) Shipping cost calculation." << endl
			<< " 12) Is customer split shipments and their data." << endl
			<< " 13) What is the current status of a particular shipment." << endl
			<< " 14) What is the amount of shipments made by Xpress in a particular month." << endl
			<< " 15) The total money transferred to the store account via the Bit app in a particular month." << endl
			<< " 16) Last year's transactions with profit higher than average." << endl
			<< " 17) Number of shipps made by Israel post and Xpress at the last year." << endl
			<< " 18) Details about all ships that included 2 editions of the same book." << endl
			<< " 19) Details about customers that didn't buy at the last 24 months." << endl
			<< " 20) Customers orders that didn't arrive to take their books." << endl
			<< " 21) Number of books in the warehouse on a monthly basis." << endl
			<< " 22) Number of books yad2 bought between dates and their sum amount." << endl
			<< " 23) The profit of second-hand book store in specific month." << endl
			<< " 24) Average monthly cross-sectional transactions." << endl
			<< " 25) Bruto salary of empoleey." << endl
			<< " 26) Who sells with the most trades in month ." << endl
			<< " 99) End the program." << endl
			<< " 100) back." << endl
			<< " **************************************************************************** " << endl
			<< " Your Choice:> ";
		cin >> choice;

		switch (choice) {

		case 99: {
			cout << "Have a nice day!!\nGoodbye!" << endl;
			exit(0);
			break;
		}

		case 100: {
			return;
			break;
		}

		case 1: {
			Mysql.query_1();
			cin.clear();
			break;
		}

		case 2: {

			Mysql.query_2();
			cin.clear();
			break;
		}

		case 3: {
			Mysql.query_3();
			cin.clear();
			break;
		}

		case 4: {
			Mysql.query_4();
			cin.clear();
			break;
		}

		case 5: {
			Mysql.query_5();
			cin.clear();
			break;
		}

		case 6: {
			Mysql.query_6();
			cin.clear();
			break;
		}

		case 7: {
			Mysql.query_7();
			cin.clear();
			break;
		}

		case 8: {
			Mysql.query_8();
			cin.clear();
			break;
		}

		case 9: {
			Mysql.query_9();
			cin.clear();
			break;
		}

		case 10: {
			Mysql.query_10();
			cin.clear();
			break;
		}

		case 11: {
			Mysql.query_11();
			cin.clear();
			break;
		}
		case 12: {
			Mysql.query_12();
			cin.clear();
			break;
		}

		case 13: {
			Mysql.query_13();
			cin.clear();
			break;
		}

		case 14: {
			Mysql.query_14();
			cin.clear();
			break;
		}

		case 15: {
			Mysql.query_15();
			cin.clear();
			break;
		}

		case 16: {
			Mysql.query_16();
			cin.clear();
			break;
		}

		case 17: {
			Mysql.query_17();
			cin.clear();
			break;
		}
		case 18: {
			Mysql.query_18();
			cin.clear();
			break;
		}

		case 19: {
			Mysql.query_19();
			cin.clear();
			break;
		}

		case 20: {
			Mysql.query_20();
			cin.clear();
			break;
		}
		case 21: {
			Mysql.query_21();
			cin.clear();
			break;
		}
		case 22: {
			Mysql.query_22();
			cin.clear();
			break;
		}
		case 23: {
			Mysql.query_23();
			cin.clear();
			break;
		}
		case 24: {
			Mysql.query_24();
			cin.clear();
			break;
		}
		case 25: {
			Mysql.query_25();
			cin.clear();
			break;
		}
		case 26: {
			Mysql.query_26();
			cin.clear();
			break;
		}
		default: {
			cout << "invalid choice, Returning to the Main Menu" << endl;
			choice = 42;
			cin.clear();
			cin.ignore(10000, '\n');
			break;
		}
		}


			   cout << "\nPress 1 to Return To the Main Menu.\nYour Choice:> " << endl;
			   choice = 0;
			   while (choice != 1) {
				   cin >> choice;
				   cin.clear();
				   cin.ignore(10000, '\n');
			   }


		}
	

	return;
}




void worker_manu() {

	MySQL Mysql;

	int choice = 0;
	while (1) {
		cout << endl << endl << endl << endl
			<< "*****************************************************************************" << endl
			<< " Welcome to our Worker menu. Please choose one of the following:" << endl
			<< "*****************************************************************************" << endl
			<< " 1) Check if a particular book is in stock." << endl
			<< " 2) Who is the oldest customer." << endl
			<< " 3) Who is the oldest book." << endl
			<< " 4) Displays the order list." << endl
			<< " 5) Several copies of a particular book are sold by the store." << endl
			<< " 6) Who is The most reader author between two dates." << endl
			<< " 7) List of the three customers who purchased the most books." << endl
			<< " 8) Who is the book with the largest number of translations currently in stock." << endl
			<< " 9) Purchasing history of a particular customer." << endl
			<< " 10) Order history of a particular person." << endl
			<< " 11) Shipping cost calculation." << endl
			<< " 12) Is customer split shipments and their data." << endl
			<< " 13) What is the current status of a particular shipment." << endl
			<< " 14) What is the amount of shipments made by Xpress in a particular month." << endl
			<< " 15) Details about customers that didn't buy at the last 24 months." << endl
			<< " 16) Customers orders that didn't arrive to take their books." << endl
			<< " 99) End the program." << endl
			<< " 100) back." << endl
			<< " **************************************************************************** " << endl
			<< " Your Choice:> ";
		cin >> choice;

		switch (choice) {

		case 99: {
			cout << "Have a nice day!!\nGoodbye!" << endl;
			exit(0);
			break;
		}

		case 100: {
			return;
			break;
		}

		case 1: {
			Mysql.query_1();
			cin.clear();
			break;
		}

		case 2: {

			Mysql.query_2();
			cin.clear();
			break;
		}

		case 3: {
			Mysql.query_3();
			cin.clear();
			break;
		}

		case 4: {
			Mysql.query_4();
			cin.clear();
			break;
		}

		case 5: {
			Mysql.query_5();
			cin.clear();
			break;
		}

		case 6: {
			Mysql.query_6();
			cin.clear();
			break;
		}

		case 7: {
			Mysql.query_7();
			cin.clear();
			break;
		}

		case 8: {
			Mysql.query_8();
			cin.clear();
			break;
		}

		case 9: {
			Mysql.query_9();
			cin.clear();
			break;
		}

		case 10: {
			Mysql.query_10();
			cin.clear();
			break;
		}

		case 11: {
			Mysql.query_11();
			cin.clear();
			break;
		}
		case 12: {
			Mysql.query_12();
			cin.clear();
			break;
		}

		case 13: {
			Mysql.query_13();
			cin.clear();
			break;
		}

		case 14: {
			Mysql.query_14();
			cin.clear();
			break;
		}

		case 15: {
			Mysql.query_19();
			cin.clear();
			break;
		}

		case 16: {
			Mysql.query_20();
			cin.clear();
			break;
		}
		default: {
			cout << "invalid choice, Returning to the Main Menu" << endl;
			choice = 42;
			cin.clear();
			cin.ignore(10000, '\n');
			break;
		}
		}


		cout << "\nPress 1 to Return To the Main Menu.\nYour Choice:> " << endl;
		choice = 0;
		while (choice != 1) {
			cin >> choice;
			cin.clear();
			cin.ignore(10000, '\n');
		}


	}


	return;
}