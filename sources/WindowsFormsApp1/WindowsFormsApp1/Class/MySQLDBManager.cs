using System;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace TokoEmasAppNET
{
    public class MySQLDBManager
    {
        public MySqlConnection dbConn = null;
        public string connStr = string.Empty;

        private string _host = string.Empty;
        private string _port = string.Empty;
        private string _db_name = string.Empty;
        private string _username = string.Empty;
        private string _password = string.Empty;

        private bool isDBConnected = false;

        /// <summary>
        /// Constructors
        /// </summary>
        /// <param name="host"></param>
        /// <param name="username"></param>
        /// <param name="password"></param>
        public MySQLDBManager(string host, string username, string password)
        {
            _host = host;
            _username = username;
            _password = password;
            _db_name = "db_toko_emas";
            _port = "8899";

            SetConnectionString();
            dbConn = new MySqlConnection(connStr);
        }

        public MySQLDBManager(string host, int port, string username, string password)
        {
            _host = host;
            _port = port.ToString();
            _username = username;
            _password = password;
            _db_name = "db_toko_emas";

            SetConnectionString();
            dbConn = new MySqlConnection(connStr);
        }

        public MySQLDBManager(string host, int port, string db_name, string username, string password)
        {
            _host = host;
            _port = port.ToString();
            _username = username;
            _password = password;
            _db_name = db_name;

            SetConnectionString();
            dbConn = new MySqlConnection(connStr);
        }

        /// <summary>
        /// Public Functions
        /// </summary>
        /// <param name="error"></param>
        public void OpenConnection(ref string error)
        {
            try
            {
                dbConn.Open();
                isDBConnected = true;
            }
            catch(Exception ex)
            {
                error = ex.Message;
                isDBConnected = false;
            }
        }

        public void CloseConnection()
        {
            if(isDBConnected)
            {
                dbConn.Close();
            }
        }

        /*
         * Master User
         */


        /*
         * Master Category
         */

        /// <summary>
        /// Private Functions
        /// </summary>
        private void SetConnectionString()
        {
            connStr = "server=" + _host;
            connStr += "; user=" + _username;
            connStr += "; database=" + _db_name;
            connStr += "; port=" + _port;
            connStr += "; password=" + _password;
        }

        /// <summary>
        /// Members Property
        /// </summary>
        public bool IsConnected
        {
            get
            {
                return isDBConnected;
            }
        }
    }
}
