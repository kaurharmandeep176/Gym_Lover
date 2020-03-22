using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Database
{
   public  class Connection
    {
        SqlConnection sqlConn;
        String connection_String = "Data Source=DESKTOP-17CKR5L;Initial Catalog=Gym;Integrated Security=True";
        SqlCommand sqlCmd;
        SqlDataReader sqlDatareader;

        //inherit the class and calling the variable of the method 
        //using the concept of oops define a single method that is used to insert delete and update the record in the table 
        public void cmdquery(String qry)
        {

            sqlConn = new SqlConnection(connection_String);
            sqlConn.Open();
            sqlCmd = new SqlCommand(qry, sqlConn);
            sqlCmd.ExecuteNonQuery();
            sqlConn.Close();
        }

        public DataTable SearchRecord(String qry)
        {
            DataTable tbl = new DataTable();


            sqlConn = new SqlConnection(connection_String);

            sqlConn.Open();
            sqlCmd = new SqlCommand(qry, sqlConn);

            sqlDatareader = sqlCmd.ExecuteReader();

            tbl.Load(sqlDatareader);

            sqlConn.Close();

            return tbl;
        }




    }
}
