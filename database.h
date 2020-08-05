/*
 * ===================================================================
 *
 *       Filename:  database.h
 *
 *    Description:  Declaring MySQL class for using database.
 *
 *        Created:  Friday 22 February 2013 12:48:40  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  Include database-detail.h and other files
 *------------------------------------------------------------------*/

#include "header.h"
#include "database-detail.h"
#include <string>
#include <stdlib.h>  
#include <limits>
#define MAX 100

/**
 * ===================================================================
 *        Class:  MySQL
 *  Description:  MySQL class for database accessability
 * ===================================================================
 */

class MySQL
{
    protected:
        /** MySQL connectivity Variables */
        MYSQL *connect;
        MYSQL_RES *res_set;
        MYSQL_ROW row;

        unsigned int i;


    public:
        /** MySQL Constructor */
        MySQL();

        /*Functions*/
 
		//bool dateValidat(string date);
		void  query_1();
		void  query_2();
		void  query_3(); 
		void  query_4();
		void  query_5();
		void  query_6();
		void  query_7();
		void  query_8();
		void  query_9();
		void  query_10();
		void  query_11();
		void  query_12();
		void  query_13();
		void  query_14();
		void  query_15();
		void  query_16();
		void  query_17();
		void  query_18();
		void  query_19();
		void  query_20();
		void  query_21();
		void  query_22();
		void  query_23();
		void  query_24();
		void  query_25();
		void  query_26();


        /** MySQL Destructor */
        ~MySQL();
};
