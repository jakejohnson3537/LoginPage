using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace LoginPage
{
    public static class DataBase
    {
        public static SqlConnection Get_DB_Connection()
        {
            string cn = Properties.Settings.Default.Connection_String;

            SqlConnection connection = new SqlConnection(cn);

            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }

            return connection;
        }

        public static DataTable GetDataTable(string SQL_Text)
        {
            SqlConnection connection = Get_DB_Connection();

                DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(SQL_Text, connection);

                adapter.Fill(table);

            return table;
        }
    }
}
