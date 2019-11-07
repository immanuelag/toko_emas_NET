using System;
using System.Collections.Generic;
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
            _db_name = "toko_emas_main_db";
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
            _db_name = "toko_emas_main_db";

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
        private void OpenConnection(ref string error)
        {
            try
            {
                if (dbConn.State == System.Data.ConnectionState.Open || 
                    dbConn.State == System.Data.ConnectionState.Connecting || 
                    dbConn.State == System.Data.ConnectionState.Broken) 
                    dbConn.Close();
                dbConn.Open();
                isDBConnected = true;
            }
            catch(Exception ex)
            {
                error = ex.Message;
                isDBConnected = false;
            }
        }

        private void CloseConnection()
        {
            if(isDBConnected)
            {
                dbConn.Close();
            }
        }

        /*
         * Master Carat
         */
        #region MasterCarat
        public List<Carat> GetAllCarat()
        {
            List<Carat> result = new List<Carat>();
            string mySelectQuery = "SELECT id, carat FROM master_carat;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            //{
            MySqlDataReader myReader;
            string error = string.Empty;
            OpenConnection(ref error);
            myReader = myCommand.ExecuteReader();
            try
            {
                
                while (myReader.Read())
                {
                        int id = myReader.GetInt32("id");
                        string value = myReader.GetString("carat");
                        Carat _carat = new Carat(id, value);
                        result.Add(_carat);
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }
        //}
            return result;
        }

        public Carat GetCaratByID(int id)
        {
            Carat result = null;

            string mySelectQuery = "SELECT carat FROM master_carat WHERE id=" + id.ToString() + ";";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            //{
            string error = string.Empty;
            OpenConnection(ref error);
            MySqlDataReader myReader;
            myReader = myCommand.ExecuteReader();
            try
            {
                if (myReader.HasRows)
                {
                    myReader.Read();
                    string value = myReader.GetString("carat");
                    result = new Carat(id, value);
                }
                else
                {
                    myReader.Close();
                    CloseConnection();
                    throw new Exception("Error ID: " + id + " not found in carat!");
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }
            //}

            return result;
        }

        public bool AddNewCarat(Carat carat)
        {
            bool result = false;

            string myInsertQuery = "INSERT INTO master_carat (id, carat) VALUES (" +
                carat.id + ",'" + carat.value + "');";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error insert into master_carat! " + ex.Message);
            }

            return result;
        }

        public bool UpdateCarat(Carat cat)
        {
            bool result = false;

            string myUpdateQuery = "UPDATE master_carat SET carat='" + cat.value + "' WHERE id=" +
                cat.id + ";";
            MySqlCommand myCommand = new MySqlCommand(myUpdateQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error update master_carat! " + ex.Message);
            }

            return result;
        }

        public bool DeleteCarat(Carat cat)
        {
            bool result = false;

            string myDeleteQuery = "DELETE FROM master_carat WHERE id='" + cat.id + "';";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error delete master_carat! " + ex.Message);
            }

            return result;
        }
        #endregion

        /*
         * Master User
         */
        #region MasterUser
        public List<UserClass> GetAllUser()
        {
            List<UserClass> result = new List<UserClass>();
            string mySelectQuery = "SELECT username, password, role FROM master_user";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            //{
            string error = string.Empty;
            OpenConnection(ref error);
            MySqlDataReader myReader;
            myReader = myCommand.ExecuteReader();
            try
            {
                while (myReader.Read())
                {
                    string username = myReader.GetString("username");
                    string password = myReader.GetString("password");
                    int role = myReader.GetInt32("role");
                    UserClass _user = new UserClass(username, password, role);
                    result.Add(_user);
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }
            //}
            return result;
        }

        public UserClass GetUserByID(string username)
        {
            UserClass result = null;

            string mySelectQuery = "SELECT username, password, role FROM master_user WHERE username='" + username + "'";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        myReader.Read();
                        string nama = myReader.GetString("username");
                        string password = myReader.GetString("password");
                        int role = myReader.GetInt32("role");
                        result = new UserClass(username, password, role);
                    }
                    else
                    {
                        CloseConnection();
                        throw new Exception("Error ID: " + username + " not found in master_user!");
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public bool AddNewUser(UserClass user)
        {
            bool result = false;

            string myInsertQuery = "INSERT INTO master_user (username, password, role) VALUES ('" +
                user.username + "','" + user.password + "');";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error insert into master_user! " + ex.Message);
            }

            return result;
        }

        public bool UpdateUser(UserClass user)
        {
            bool result = false;

            string myUpdateQuery = "UPDATE master_user SET password='" + user.password + "', role=" + (int)user.role + " WHERE username='" +
                user.username + "';";
            MySqlCommand myCommand = new MySqlCommand(myUpdateQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error update master_user! " + ex.Message);
            }

            return result;
        }

        public bool DeleteUser(UserClass user)
        {
            bool result = false;

            string myDeleteQuery = "DELETE FROM master_user WHERE username='" + user.username + "';";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error delete master_user! " + ex.Message);
            }

            return result;
        }
        #endregion

        /*
         * Master Supplier
         */
        #region MasterSupplier
        public List<Supplier> GetAllSupplier()
        {
            List<Supplier> result = new List<Supplier>();
            string mySelectQuery = "SELECT id, code, nama FROM master_supplier";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            //{
            string error = string.Empty;
            OpenConnection(ref error);
            MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        int id = myReader.GetInt32("id");
                        string code = myReader.GetString("code");
                        string nama = myReader.GetString("nama");
                        Supplier _sup = new Supplier(id, code, nama);
                        result.Add(_sup);
                    }
                }
                finally
                {
                    myReader.Close();
                CloseConnection();
                }
            //}
            return result;
        }

        public Supplier GetSupplierByID(int id)
        {
            Supplier result = null;

            string mySelectQuery = "SELECT code,nama FROM master_supplier WHERE id=" + id;
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        myReader.Read();
                        
                        string code = myReader.GetString("code");
                        string nama = myReader.GetString("nama");
                        result = new Supplier(id, code, nama);
                    }
                    else
                    {
                        CloseConnection();
                        throw new Exception("Error ID: " + id + " not found in master_supplier!");
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public int GetNewSupplierID()
        {
            int newID = -1;

            string mySelectQuery = "SELECT MAX(id) FROM master_supplier";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        myReader.Read();

                        if (!myReader.IsDBNull(0))
                            newID = myReader.GetInt32(0) + 1;
                        else
                            newID = 0;
                        
                    }
                    else
                    {
                        CloseConnection();
                        throw new Exception("Error get new ID!");
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return newID;
        }

        public bool AddNewSupplier(Supplier supplier)
        {
            bool result = false;

            string myInsertQuery = "INSERT INTO master_supplier (id, code, nama) VALUES (" + supplier.id + ",'" +
                supplier.code + "','" + supplier.nama + "');";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error insert into master_supplier! " + ex.Message);
            }

            return result;
        }

        public bool UpdateSupplier(Supplier supplier)
        {
            bool result = false;

            string myUpdateQuery = "UPDATE master_supplier SET code='" + supplier.code + "', nama='" + supplier.nama + "' WHERE id=" +
                supplier.id + ";";
            MySqlCommand myCommand = new MySqlCommand(myUpdateQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error update master_supplier! " + ex.Message);
            }

            return result;
        }

        public bool DeleteSupplier(Supplier supplier)
        {
            bool result = false;

            string myDeleteQuery = "DELETE FROM master_supplier WHERE id=" + supplier.id + ";";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error delete master_supplier! " + ex.Message);
            }

            return result;
        }
        #endregion

        /*
         * Master Category
         */
        #region MasterCategory
        public List<Category> GetAllCategories()
        {
            List<Category> result = new List<Category>();
            string mySelectQuery = "SELECT id, nama FROM master_category";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        string id = myReader.GetString("id");
                        string nama = myReader.GetString("nama");
                        Category _cat = new Category(id, nama);
                        result.Add(_cat);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }
            return result;
        }

        public Category GetCategoryByID(string id)
        {
            Category result = null;

            string mySelectQuery = "SELECT nama FROM master_category WHERE id='" + id + "'";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                MySqlDataReader myReader;
                string error = string.Empty;
                OpenConnection(ref error);
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        myReader.Read();
                        string nama = myReader.GetString("nama");
                        result = new Category(id, nama);
                    }
                    else
                    {
                        CloseConnection();
                        throw new Exception("Error ID: " + id + " not found in category!");
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public bool AddNewCategory(Category cat)
        {
            bool result = false;

            string myInsertQuery = "INSERT INTO master_category (id, nama) VALUES ('" +
                cat.category_id + "','" + cat.category_name + "');";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error insert into master_category! " + ex.Message);
            }

            return result;
        }

        public bool UpdateCategory(Category cat)
        {
            bool result = false;

            string myUpdateQuery = "UPDATE master_category SET nama='"+ cat.category_name + "' WHERE id='" +
                cat.category_id + "';";
            MySqlCommand myCommand = new MySqlCommand(myUpdateQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error update master_category! " + ex.Message);
            }

            return result;
        }

        public bool DeleteCategory(Category cat)
        {
            bool result = false;

            string myDeleteQuery = "DELETE FROM master_category WHERE id='" + cat.category_id + "';";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error delete master_category! " + ex.Message);
            }

            return result;
        }

        public int GetCountCategory()
        {
            int count = 0;

            string myDeleteQuery = "SELECT COUNT(id) FROM master_category";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);

            
            MySqlDataReader myReader;
            string error = string.Empty;
            OpenConnection(ref error);
            myReader = myCommand.ExecuteReader();

            try
            {
                
                if (myReader.HasRows)
                {
                    myReader.Read();
                    count = myReader.GetInt32(0);
                }
                else
                {
                    CloseConnection();
                    throw new Exception("Error Get count category!");
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }

            return count;
        }
        #endregion

        /*
         * Master Subcategory
         */
        #region MasterSubcategory
        public List<Subcategory> GetAllSubcategories()
        {
            List<Subcategory> result = new List<Subcategory>();
            string mySelectQuery = "SELECT master_subcategory.id, category, master_category.nama, master_subcategory.nama FROM master_subcategory, master_category WHERE master_subcategory.category=master_category.id";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        string id = myReader.GetString(0);
                        string cat_id = myReader.GetString(1);
                        string cat_nama = myReader.GetString(2);
                        string subcat_nama = myReader.GetString(3);
                        Category cat = new Category(cat_id, cat_nama);
                        Subcategory _subcat = new Subcategory(cat, id, subcat_nama);
                        result.Add(_subcat);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }
            return result;
        }

        public List<Subcategory> GetAllSubcategoriesByCat(string cat_id)
        {
            List<Subcategory> result = new List<Subcategory>();
            string mySelectQuery = "SELECT master_subcategory.id, master_category.nama, master_subcategory.nama FROM master_subcategory, master_category WHERE category='" +
                cat_id + "' AND category=master_category.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        string id = myReader.GetString(0);
                        string cat_nama = myReader.GetString(1);
                        string subcat_nama = myReader.GetString(2);
                        Category cat = new Category(cat_id, cat_nama);
                        Subcategory _subcat = new Subcategory(cat, id, subcat_nama);
                        result.Add(_subcat);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }
            return result;
        }

        public Subcategory GetSubcategoryByID(string id, string cat_id)
        {
            Subcategory result = null;

            string mySelectQuery = "SELECT nama FROM master_subcategory WHERE id='" + id + 
                "' AND category='" + cat_id + "';";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        myReader.Read();
                        string nama = myReader.GetString("nama");
                        Category cat = GetCategoryByID(cat_id);
                        result = new Subcategory(cat, id, nama);
                    }
                    else
                    {
                        CloseConnection();
                        throw new Exception("Error ID: " + id + " and CatID: " + cat_id + " not found in subcategory!");
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public bool AddNewSubcategory(Subcategory subcat)
        {
            bool result = false;

            string myInsertQuery = "INSERT INTO master_subcategory (id, category, nama) VALUES ('" +
                subcat.subcategory_id + "','" + subcat.parent.category_id + "','" + subcat.subcategory_name + "');";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error insert into master_subcategory! " + ex.Message);
            }

            return result;
        }

        public bool UpdateSubcategory(Subcategory subcat)
        {
            bool result = false;

            string myUpdateQuery = "UPDATE master_subcategory SET nama='" + subcat.subcategory_name + "' WHERE id='" +
                subcat.subcategory_id + "' AND category='" + subcat.parent.category_id + "';";
            MySqlCommand myCommand = new MySqlCommand(myUpdateQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error update master_subcategory! " + ex.Message);
            }

            return result;
        }

        public bool DeleteSubcategory(Subcategory subcat)
        {
            bool result = false;

            string myDeleteQuery = "DELETE FROM master_subcategory WHERE id='" + subcat.subcategory_id + 
                "' AND category='" + subcat.parent.category_id + "';";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error delete master_subcategory! " + ex.Message);
            }

            return result;
        }

        public int GetCountSubcategory(string cat_id)
        {
            int count = 0;

            string myDeleteQuery = "SELECT COUNT(id) FROM master_subcategory WHERE category='" + cat_id + "';";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);


            MySqlDataReader myReader;
            string error = string.Empty;
            OpenConnection(ref error);
            myReader = myCommand.ExecuteReader();

            try
            {

                if (myReader.HasRows)
                {
                    myReader.Read();
                    count = myReader.GetInt32(0);
                }
                else
                {
                    CloseConnection();
                    throw new Exception("Error Get count subcategory!");
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }

            return count;
        }
        #endregion

        /*
         * Master Inventory
         */
        #region MasterInventory
        public List<Inventory> GetAllInventories()
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, stocks, master_items.supplier, master_supplier.code, master_supplier.nama" + 
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_items.subcategory=master_subcategory.id AND master_subcategory.category=master_category.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id  AND master_items.supplier = master_supplier.id GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            
            string error = string.Empty;
            OpenConnection(ref error);
            MySqlDataReader myReader;

            try
            {
                myReader = myCommand.ExecuteReader();
                while (myReader.Read())
                {
                    Inventory items = new Inventory();
                    int idx = 0;
                    items.inventory_id = myReader.GetString(idx++);
                    string cat_id = myReader.GetString(idx++);
                    string cat_name = myReader.GetString(idx++);
                    Category new_cat = new Category(cat_id, cat_name);
                    string sub_id = myReader.GetString(idx++);
                    string sub_nama = myReader.GetString(idx++);
                    Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                    items.inventory_sub = subs;
                    if (!myReader.IsDBNull(idx))
                        items.inventory_name = myReader.GetString(idx++);
                    else
                    {
                        idx++;
                        items.inventory_name = string.Empty;
                    }

                    int car_id = myReader.GetInt32(idx++);
                    string car_value = myReader.GetString(idx++);
                    items.inventory_weight = myReader.GetFloat(idx++);
                    items.inventory_carats = car_id;
                    items.inventory_status = myReader.GetInt32(idx++);
                    int sup_id = myReader.GetInt32(idx++);
                    string sup_code = myReader.GetString(idx++);
                    string sup_nama = myReader.GetString(idx++);
                    items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);
                    result.Add(items);
                }
                myReader.Close();
            }
            catch(Exception ex)
            {
                throw new Exception("Error MySQL DB : " + ex.Message, ex);
            }
            finally
            {
                CloseConnection();
            }
            

            return result;
        }

        public List<Inventory> GetAllInventoriesSearch(string searchName)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, stocks, master_items.supplier, master_supplier.code, master_supplier.nama" +
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_items.subcategory=master_subcategory.id AND master_subcategory.category=master_category.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id  AND master_items.supplier = master_supplier.id AND " +
                " master_items.nama LIKE '%" + searchName + "%' GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        Inventory items = new Inventory();
                        int idx = 0;
                        items.inventory_id = myReader.GetString(idx++);
                        string cat_id = myReader.GetString(idx++);
                        string cat_name = myReader.GetString(idx++);
                        Category new_cat = new Category(cat_id, cat_name);
                        string sub_id = myReader.GetString(idx++);
                        string sub_nama = myReader.GetString(idx++);
                        Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                        items.inventory_sub = subs;
                        if (!myReader.IsDBNull(idx))
                            items.inventory_name = myReader.GetString(idx++);
                        else
                        {
                            idx++;
                            items.inventory_name = string.Empty;
                        }

                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);
                        int sup_id = myReader.GetInt32(idx++);
                        string sup_code = myReader.GetString(idx++);
                        string sup_nama = myReader.GetString(idx++);
                        items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);
                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesByKeyword(Dictionary<int, string> keyword)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, stocks, master_items.supplier, master_supplier.code, master_supplier.nama" +
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_items.subcategory=master_subcategory.id AND master_subcategory.category=master_category.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id  AND master_items.supplier = master_supplier.id ";

            string searchkey = "";
            foreach (KeyValuePair<int, string> kvp in keyword)
            {
                searchkey += " AND ";
                if (kvp.Key == 0) searchkey += "master_items.category='" + kvp.Value + "'";
                else if (kvp.Key == 1) searchkey += "master_items.subcategory='" + kvp.Value + "'";
                else if (kvp.Key == 2) searchkey += "master_supplier.code='" + kvp.Value + "'";
                else if (kvp.Key == 3) searchkey += "master_items.karat=" + kvp.Value;
                else if (kvp.Key == 4) searchkey += "master_items.stocks=" + kvp.Value;
                else if (kvp.Key == 5) searchkey += "master_items.id='" + kvp.Value + "'";
                else if (kvp.Key == 6) searchkey += "master_items.nama LIKE '%" + kvp.Value + "%'";
                else if (kvp.Key == 7) searchkey += "master_items.berat >= " + kvp.Value;
                else if (kvp.Key == 8) searchkey += "master_items.berat <= " + kvp.Value;

            }
            mySelectQuery += searchkey;
            mySelectQuery += " GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        Inventory items = new Inventory();
                        int idx = 0;
                        items.inventory_id = myReader.GetString(idx++);
                        string cat_id = myReader.GetString(idx++);
                        string cat_name = myReader.GetString(idx++);
                        Category new_cat = new Category(cat_id, cat_name);
                        string sub_id = myReader.GetString(idx++);
                        string sub_nama = myReader.GetString(idx++);
                        Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                        items.inventory_sub = subs;
                        if (!myReader.IsDBNull(idx))
                            items.inventory_name = myReader.GetString(idx++);
                        else
                        {
                            idx++;
                            items.inventory_name = string.Empty;
                        }

                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);
                        int sup_id = myReader.GetInt32(idx++);
                        string sup_code = myReader.GetString(idx++);
                        string sup_nama = myReader.GetString(idx++);
                        items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);
                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesByCat(string cat_id)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, stocks, master_items.supplier, master_supplier.code, master_supplier.nama  " +
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_subcategory.category=master_category.id AND master_items.subcategory=master_subcategory.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id AND master_items.supplier=master_supplier.id AND master_items.category='" +
                cat_id + "' GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        Inventory items = new Inventory();
                        int idx = 0;
                        items.inventory_id = myReader.GetString(idx++);
                        ///string cat_id = myReader.GetString(1);
                        idx++;
                        string cat_name = myReader.GetString(idx++);
                        Category new_cat = new Category(cat_id, cat_name);
                        string sub_id = myReader.GetString(idx++);
                        string sub_nama = myReader.GetString(idx++);
                        Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                        items.inventory_sub = subs;
                        if (!myReader.IsDBNull(idx))
                            items.inventory_name = myReader.GetString(idx++);
                        else
                        {
                            idx++;
                            items.inventory_name = string.Empty;
                        }
                        
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);
                        int sup_id = myReader.GetInt32(idx++);
                        string sup_code = myReader.GetString(idx++);
                        string sup_nama = myReader.GetString(idx++);
                        items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);
                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesByStatus(int status)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, stocks, master_items.supplier, master_supplier.code, master_supplier.nama " +
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_subcategory.category=master_category.id AND master_items.subcategory=master_subcategory.id AND" +
                " master_items.category = master_category.id AND karat=master_carat.id AND master_items.supplier=master_supplier.id AND master_items.stocks=" +
                status.ToString() + " GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        Inventory items = new Inventory();
                        int idx = 0;
                        items.inventory_id = myReader.GetString(idx++);
                        string cat_id = myReader.GetString(idx++);
                        string cat_name = myReader.GetString(idx++);
                        Category new_cat = new Category(cat_id, cat_name);
                        string sub_id = myReader.GetString(idx++);
                        string sub_nama = myReader.GetString(idx++);
                        Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                        items.inventory_sub = subs;
                        if (!myReader.IsDBNull(idx))
                            items.inventory_name = myReader.GetString(idx++);
                        else
                        {
                            idx++;
                            items.inventory_name = string.Empty;
                        }
                        
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = status;
                        int sup_id = myReader.GetInt32(idx++);
                        string sup_code = myReader.GetString(idx++);
                        string sup_nama = myReader.GetString(idx++);
                        items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);
                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesByCatStatus(string cat_id, int status)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, master_items.supplier, master_supplier.code, master_supplier.nama " +
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_subcategory.category=master_category.id AND master_items.subcategory=master_subcategory.id AND" +
                " master_items.category = master_category.id AND karat=master_carat.id AND master_items.supplier=master_supplier.id AND master_items.category='" +
                cat_id + "' AND stocks=" + status + " GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        Inventory items = new Inventory();
                        int idx = 0;
                        items.inventory_id = myReader.GetString(idx++);
                        ///string cat_id = myReader.GetString(1);
                        idx++;
                        string cat_name = myReader.GetString(idx++);
                        Category new_cat = new Category(cat_id, cat_name);
                        string sub_id = myReader.GetString(idx++);
                        string sub_nama = myReader.GetString(idx++);
                        Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                        items.inventory_sub = subs;
                        if (!myReader.IsDBNull(idx))
                            items.inventory_name = myReader.GetString(idx++);
                        else
                        {
                            idx++;
                            items.inventory_name = string.Empty;
                        }
                        
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = status;
                        //items.inventory_status = myReader.GetInt32(idx++);
                        int sup_id = myReader.GetInt32(idx++);
                        string sup_code = myReader.GetString(idx++);
                        string sup_nama = myReader.GetString(idx++);
                        items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);

                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesBySub(string cat_id, string sub_id)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, stocks, master_items.supplier, master_supplier.code, master_supplier.nama " +
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_subcategory.category=master_category.id AND master_items.category = master_category.id AND" +
                " master_items.subcategory = master_subcategory.id AND karat=master_carat.id AND master_items.supplier=master_supplier.id AND master_items.category='" +
                cat_id + "' AND master_items.subcategory='" + sub_id + "' GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        Inventory items = new Inventory();
                        int idx = 0;
                        items.inventory_id = myReader.GetString(idx++);
                        idx++;
                        ///string cat_id = myReader.GetString(1);
                        string cat_name = myReader.GetString(idx++);
                        Category new_cat = new Category(cat_id, cat_name);
                        idx++;
                        //string sub_id = myReader.GetString(3);
                        string sub_nama = myReader.GetString(idx++);
                        Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                        items.inventory_sub = subs;
                        if (!myReader.IsDBNull(idx))
                            items.inventory_name = myReader.GetString(idx++);
                        else
                        {
                            idx++;
                            items.inventory_name = string.Empty;
                        }
                        
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);
                        int sup_id = myReader.GetInt32(idx++);
                        string sup_code = myReader.GetString(idx++);
                        string sup_nama = myReader.GetString(idx++);
                        items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);

                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesBySubStatus(string cat_id, string sub_id, int status)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, master_items.supplier, master_supplier.code, master_supplier.nama " +
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_subcategory.category=master_category.id AND master_items.category = master_category.id AND" +
                " master_items.subcategory = master_subcategory.id AND karat=master_carat.id AND master_items.supplier=master_supplier.id AND master_items.category='" +
                cat_id + "' AND master_items.subcategory='" + sub_id + "' AND master_items.stocks=" + status + " GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        Inventory items = new Inventory();
                        int idx = 0;
                        items.inventory_id = myReader.GetString(idx++);
                        idx++;
                        ///string cat_id = myReader.GetString(1);
                        string cat_name = myReader.GetString(idx++);
                        Category new_cat = new Category(cat_id, cat_name);
                        idx++;
                        //string sub_id = myReader.GetString(3);
                        string sub_nama = myReader.GetString(idx++);
                        Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                        items.inventory_sub = subs;
                        if (!myReader.IsDBNull(idx))
                            items.inventory_name = myReader.GetString(idx++);
                        else
                        {
                            idx++;
                            items.inventory_name = string.Empty;
                        }
                        
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = status;
                        //items.inventory_status = myReader.GetInt32(idx++);
                        int sup_id = myReader.GetInt32(idx++);
                        string sup_code = myReader.GetString(idx++);
                        string sup_nama = myReader.GetString(idx++);
                        items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);

                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public Inventory GetInventoriesByID(string id)
        {
            Inventory result = null;

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, karat, master_carat.carat, berat, stocks, master_items.supplier, master_supplier.code, master_supplier.nama " +
                " FROM master_items, master_category, master_subcategory, master_carat, master_supplier " +
                " WHERE master_subcategory.category=master_category.id AND master_items.supplier=master_supplier.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id AND " +
                " master_items.id ='" + id + "';";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        myReader.Read();
                        Inventory items = new Inventory();
                        int idx = 0;
                        items.inventory_id = myReader.GetString(idx++);
                        string cat_id = myReader.GetString(idx++);
                        string cat_name = myReader.GetString(idx++);
                        Category new_cat = new Category(cat_id, cat_name);
                        string sub_id = myReader.GetString(idx++);
                        string sub_nama = myReader.GetString(idx++);
                        Subcategory subs = new Subcategory(new_cat, sub_id, sub_nama);
                        items.inventory_sub = subs;
                        if (!myReader.IsDBNull(idx))
                            items.inventory_name = myReader.GetString(idx++);
                        else
                        {
                            idx++;
                            items.inventory_name = string.Empty;
                        }
                        
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);
                        int sup_id = myReader.GetInt32(idx++);
                        string sup_code = myReader.GetString(idx++);
                        string sup_nama = myReader.GetString(idx++);
                        items.inventory_supplier = new Supplier(sup_id, sup_code, sup_nama);

                        result = items;
                    }
                    else
                    {
                        CloseConnection();
                        throw new Exception("Error ID: " + id + " not found in master_inventory!");
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public string GetLastInventoryIDByCatSub(string cat_id, string sub_id)
        {
            string LastInventoryID = string.Empty;

            string mySelectQuery = "SELECT master_items.id FROM master_items WHERE category='" + cat_id + "' AND" +
                " subcategory='" + sub_id + "' ORDER BY id DESC LIMIT 1;";

            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        myReader.Read();
                        LastInventoryID = myReader.GetString(0);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return LastInventoryID;
        }
        public bool AddNewInventory(Inventory item)
        {
            bool result = false;

            string myInsertQuery = "INSERT INTO master_items (id, category, subcategory, nama, supplier, karat, berat) VALUES ('" +
                item.inventory_id + "','" + item.inventory_sub.parent.category_id + 
                "','" + item.inventory_sub.subcategory_id + "','" + item.inventory_name + "'," + item.inventory_supplier.id + 
                "," + item.inventory_carats + "," + item.inventory_weight.ToString("0.000")  + " );";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error insert into master_items! " + ex.Message);
            }

            return result;
        }

        public bool UpdateInventory(Inventory item)
        {
            bool result = false;

            string myUpdateQuery = "UPDATE master_items SET category='" + item.inventory_sub.parent.category_id +
                "', subcategory='" + item.inventory_sub.subcategory_id + "', nama='"+
                item.inventory_name + "', karat=" + item.inventory_carats.ToString() + ", berat=" +
                item.inventory_weight.ToString("0.000") + ", supplier=" + item.inventory_supplier.id + ", stocks=" +
                item.inventory_status + " WHERE id='" + item.inventory_id + "';";
            MySqlCommand myCommand = new MySqlCommand(myUpdateQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error update master_items! " + ex.Message);
            }

            return result;
        }

        public bool DeleteInventory(Inventory item)
        {
            bool result = false;

            string myDeleteQuery = "DELETE FROM master_items WHERE id='" + item.inventory_id + "';";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error delete master_items! " + ex.Message);
            }

            return result;
        }

        public int GetCountInventory()
        {
            int count = 0;

            string myDeleteQuery = "SELECT COUNT(id) FROM master_items";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);

            MySqlDataReader myReader;
            string error = string.Empty;
            OpenConnection(ref error);
            myReader = myCommand.ExecuteReader();

            try
            {
                if (myReader.HasRows)
                {
                    myReader.Read();
                    count = myReader.GetInt32(0);
                }
                else
                {
                    CloseConnection();
                    throw new Exception("Error get count inventory!");
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }

            return count;
        }

        public int GetCountInventoryByCat(string cat_id)
        {
            int count = 0;

            string myDeleteQuery = "SELECT COUNT(id) FROM master_items WHERE category='" + cat_id + "'";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);


            MySqlDataReader myReader;
            string error = string.Empty;
            OpenConnection(ref error);
            myReader = myCommand.ExecuteReader();

            try
            {

                if (myReader.HasRows)
                {
                    myReader.Read();
                    count = myReader.GetInt32(0);
                }
                else
                {
                    CloseConnection();
                    throw new Exception("Error Get count inventory by category!");
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }

            return count;
        }

        public int GetCountInventoryInside()
        {
            int count = 0;

            string myDeleteQuery = "SELECT COUNT(id) FROM master_items WHERE stocks=1";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);


            MySqlDataReader myReader;
            string error = string.Empty;
            OpenConnection(ref error);
            myReader = myCommand.ExecuteReader();

            try
            {

                if (myReader.HasRows)
                {
                    myReader.Read();
                    count = myReader.GetInt32(0);
                }
                else
                {
                    CloseConnection();
                    throw new Exception("Error Get count inventory inside!");
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }

            return count;
        }

        public int GetCountInventoryOutside()
        {
            int count = 0;

            string myDeleteQuery = "SELECT COUNT(id) FROM master_items WHERE stocks=2";
            MySqlCommand myCommand = new MySqlCommand(myDeleteQuery, dbConn);


            MySqlDataReader myReader;
            string error = string.Empty;
            OpenConnection(ref error);
            myReader = myCommand.ExecuteReader();

            try
            {

                if (myReader.HasRows)
                {
                    myReader.Read();
                    count = myReader.GetInt32(0);
                }
                else
                {
                    CloseConnection();
                    throw new Exception("Error Get count inventory outside!");
                }
            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }

            return count;
        }

        public List<string> GetAllIDInventoryByStock(int stock)
        {
            List<string> result = new List<string>();

            string mySelectQuery = "SELECT id FROM `master_items` WHERE master_items.stocks=" + stock.ToString();
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            string error = string.Empty;
            OpenConnection(ref error);
            MySqlDataReader myReader;
            myReader = myCommand.ExecuteReader();

            try
            { 
                while(myReader.Read())
                {
                    string id = myReader.GetString(0);
                    result.Add(id);
                }
            }
            catch(Exception ex)
            {

            }
            finally
            {
                myReader.Close();
                CloseConnection();
            }
            return result;
        }

        #endregion

        /*
         Stock Item
             */

        public int GetStockItemNewID()
        {
            int newID = -1;

            string mySelectQuery = "SELECT MAX(id) FROM items_check";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            string error = string.Empty;
            OpenConnection(ref error);
            MySqlDataReader myReader;
            myReader = myCommand.ExecuteReader();

            if(myReader.HasRows)
            {
                int maxID = myReader.GetInt32(0);
                newID = maxID + 1;

                myReader.Close();
                CloseConnection();
            }
            return newID;
        }
        public List<StockItem> GetAllStockItems()
        {
            List<StockItem> result = new List<StockItem>();

            string mySelectQuery = "SELECT id, timestamp, user, status, in_out FROM items_check";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        StockItem stockItem = new StockItem();
                        stockItem.id = myReader.GetInt32(0);
                        stockItem.timestamp = myReader.GetString(1);
                        stockItem.user = myReader.GetString(2);
                        stockItem.status = myReader.GetInt32(3);
                        stockItem.in_out = myReader.GetInt32(4);
                        result.Add(stockItem);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public List<StockItem> GetAllStockItems(int in_out)
        {
            List<StockItem> result = new List<StockItem>();

            string mySelectQuery = "SELECT id, timestamp, user, status FROM items_check WHERE in_out=" + in_out.ToString();
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        StockItem stockItem = new StockItem();
                        stockItem.id = myReader.GetInt32(0);
                        stockItem.timestamp = myReader.GetString(1);
                        stockItem.user = myReader.GetString(2);
                        stockItem.status = myReader.GetInt32(3);
                        stockItem.in_out = in_out;
                        result.Add(stockItem);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public List<StockItemDetail> GetAllStockItemsDetails(int idStock)
        {
            List<StockItemDetail> result = new List<StockItemDetail>();

            string mySelectQuery = "SELECT id_items, check_status FROM items_check_detail WHERE id_stock_check=" + idStock.ToString();
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            //if (isDBConnected)
            {
                string error = string.Empty;
                OpenConnection(ref error);
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    while (myReader.Read())
                    {
                        StockItemDetail stockItemDetail = new StockItemDetail();
                        stockItemDetail.itemID = myReader.GetString(0);
                        stockItemDetail.checkStatus = myReader.GetInt32(1);
                        stockItemDetail.stockItemID = idStock;
                        
                        result.Add(stockItemDetail);
                    }
                }
                finally
                {
                    myReader.Close();
                    CloseConnection();
                }
            }

            return result;
        }

        public bool AddBulkStockItemDetail(int idStock, int in_out)
        {
            bool result = false;

            List<string> listID = null;

            listID=GetAllIDInventoryByStock(in_out);

            if (listID.Count > 0)
            {
                string myInsertQuery = "INSERT INTO items_check_detail (id_stock_check, id_items, check_status) VALUES ";
                for(int i=0;i<listID.Count;i++)
                {
                    myInsertQuery += "(" + idStock.ToString() + listID[i] + "," + in_out +")";
                    if(i==listID.Count-1)
                    {
                        myInsertQuery += ";";
                    }
                    else
                    {
                        myInsertQuery += ",";
                    }
                }
                MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

                try
                {
                    string error = string.Empty;
                    OpenConnection(ref error);
                    int rows = myCommand.ExecuteNonQuery();
                    CloseConnection();
                    if (rows > 0) return true;
                }
                catch (Exception ex)
                {
                    CloseConnection();
                    throw new Exception("Error insert into StockItems! " + ex.Message);
                }
            }

            return result;
        }

        public bool AddNewStockItem(StockItem stockItem)
        {
            bool result = false;

            string myInsertQuery = "INSERT INTO items_check (id, timestamp, user, status) VALUES (" +
                stockItem.id + ",'" + stockItem.timestamp + "','" + stockItem.user + "'," + stockItem.status + ");";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error insert into StockItems! " + ex.Message);
            }

            return result;
        }

        public bool UpdateStockItem(StockItem stockItem)
        {
            bool result = false;

            string myInsertQuery = "UPDATE items_check SET id=" + stockItem.id + ", timestamp='" + stockItem.timestamp + "', user='" + stockItem.user + "', status=" + stockItem.status + ";";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                string error = string.Empty;
                OpenConnection(ref error);
                int rows = myCommand.ExecuteNonQuery();
                CloseConnection();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                CloseConnection();
                throw new Exception("Error insert into StockItems! " + ex.Message);
            }

            return result;
        }

        /// <summary>
        /// Private Functions
        /// </summary>
        private void SetConnectionString()
        {
            connStr = "server=" + _host;
            connStr += "; user=" + _username;
            connStr += "; database=" + _db_name;
            connStr += "; port=" + _port;
            if (!string.IsNullOrEmpty(_password))
            {
                connStr += "; password=" + _password;
            }else
            {
                connStr += ";";
            }
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
