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
         * Master Carat
         */
        #region MasterCarat
        public List<Carat> GetAllCarat()
        {
            List<Carat> result = new List<Carat>();
            string mySelectQuery = "SELECT id, carat FROM master_carat;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
                MySqlDataReader myReader;
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
                }
            }
            return result;
        }

        public Carat GetCaratByID(int id)
        {
            Carat result = null;

            string mySelectQuery = "SELECT carat FROM master_carat WHERE id=" + id.ToString() + ";";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
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
                        throw new Exception("Error ID: " + id + " not found in carat!");
                    }
                }
                finally
                {
                    myReader.Close();
                }
            }

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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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

            if (isDBConnected)
            {
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
                }
            }
            return result;
        }

        public UserClass GetUserByID(string username)
        {
            UserClass result = null;

            string mySelectQuery = "SELECT username, password, role FROM master_user WHERE username='" + username + "'";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        string nama = myReader.GetString("username");
                        string password = myReader.GetString("password");
                        int role = myReader.GetInt32("role");
                        result = new UserClass(username, password, role);
                    }
                    else
                    {
                        throw new Exception("Error ID: " + username + " not found in master_user!");
                    }
                }
                finally
                {
                    myReader.Close();
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Error delete master_user! " + ex.Message);
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

            if (isDBConnected)
            {
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
                }
            }
            return result;
        }

        public Category GetCategoryByID(string id)
        {
            Category result = null;

            string mySelectQuery = "SELECT nama FROM master_category WHERE id='" + id + "'";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        string nama = myReader.GetString("nama");
                        result = new Category(id, nama);
                    }
                    else
                    {
                        throw new Exception("Error ID: " + id + " not found in category!");
                    }
                }
                finally
                {
                    myReader.Close();
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Error delete master_category! " + ex.Message);
            }

            return result;
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

            if (isDBConnected)
            {
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

            if (isDBConnected)
            {
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

            if (isDBConnected)
            {
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
                    {
                        string nama = myReader.GetString("nama");
                        Category cat = GetCategoryByID(cat_id);
                        result = new Subcategory(cat, id, nama);
                    }
                    else
                    {
                        throw new Exception("Error ID: " + id + " and CatID: " + cat_id + " not found in subcategory!");
                    }
                }
                finally
                {
                    myReader.Close();
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Error delete master_subcategory! " + ex.Message);
            }

            return result;
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
                " master_subcategory.nama, master_items.nama, master_items.supplier, karat, master_carat.carat, berat, stocks" + 
                " FROM master_items, master_category, master_subcategory, master_carat " +
                " WHERE master_subcategory.category=master_category.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
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
                        items.inventory_supplier = myReader.GetString(idx++);
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);

                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesByCat(string cat_id)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, master_items.supplier, karat, master_carat.carat, berat, stocks" +
                " FROM master_items, master_category, master_subcategory, master_carat " +
                " WHERE master_subcategory.category=master_category.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id AND master_items.category='" +
                cat_id + "' GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
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
                        items.inventory_supplier = myReader.GetString(idx++);
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);

                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesByCatStatus(string cat_id, int status)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, master_items.supplier, karat, master_carat.carat, berat" +
                " FROM master_items, master_category, master_subcategory, master_carat " +
                " WHERE master_subcategory.category=master_category.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id AND master_items.category='" +
                cat_id + "' AND stocks=" + status + " GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
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
                        items.inventory_supplier = myReader.GetString(idx++);
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = status;
                        //items.inventory_status = myReader.GetInt32(idx++);

                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesBySub(string cat_id, string sub_id)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, master_items.supplier, karat, master_carat.carat, berat, stocks" +
                " FROM master_items, master_category, master_subcategory, master_carat " +
                " WHERE master_subcategory.category=master_category.id AND master_items.category = master_category.id AND" +
                " master_items.subcategory = master_subcategory.id AND karat=master_carat.id AND master_items.category='" +
                cat_id + "' AND master_items.subcategory='" + sub_id + "' GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
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
                        items.inventory_supplier = myReader.GetString(idx++);
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);
                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                }
            }

            return result;
        }

        public List<Inventory> GetAllInventoriesBySubStatus(string cat_id, string sub_id, int status)
        {
            List<Inventory> result = new List<Inventory>();

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, master_items.supplier, karat, master_carat.carat, berat" +
                " FROM master_items, master_category, master_subcategory, master_carat " +
                " WHERE master_subcategory.category=master_category.id AND master_items.category = master_category.id AND" +
                " master_items.subcategory = master_subcategory.id AND karat=master_carat.id AND master_items.category='" +
                cat_id + "' AND master_items.subcategory='" + sub_id + "' AND master_items.stocks=" + status + " GROUP BY master_items.id;";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
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
                        items.inventory_supplier = myReader.GetString(idx++);
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = status;
                        //items.inventory_status = myReader.GetInt32(idx++);
                        result.Add(items);
                    }
                }
                finally
                {
                    myReader.Close();
                }
            }

            return result;
        }

        public Inventory GetInventoriesByID(string id)
        {
            Inventory result = null;

            string mySelectQuery = "SELECT master_items.id, master_items.category, master_category.nama, master_items.subcategory, " +
                " master_subcategory.nama, master_items.nama, master_items.supplier, karat, master_carat.carat, berat, stocks" +
                " FROM master_items, master_category, master_subcategory, master_carat " +
                " WHERE master_subcategory.category=master_category.id AND " +
                " master_items.category = master_category.id AND karat=master_carat.id AND " +
                " master_items.id ='" + id + "';";
            MySqlCommand myCommand = new MySqlCommand(mySelectQuery, dbConn);

            if (isDBConnected)
            {
                MySqlDataReader myReader;
                myReader = myCommand.ExecuteReader();
                try
                {
                    if (myReader.HasRows)
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
                        items.inventory_supplier = myReader.GetString(idx++);
                        int car_id = myReader.GetInt32(idx++);
                        string car_value = myReader.GetString(idx++);
                        items.inventory_weight = myReader.GetFloat(idx++);
                        items.inventory_carats = car_id;
                        items.inventory_status = myReader.GetInt32(idx++);

                        result = items;
                    }
                    else
                    {
                        throw new Exception("Error ID: " + id + " not found in master_inventory!");
                    }
                }
                finally
                {
                    myReader.Close();
                }
            }

            return result;
        }

        public bool AddNewInventory(Inventory item)
        {
            bool result = false;

            string myInsertQuery = "INSERT INTO master_items (id, category, subcategory, nama, supplier, karat, berat) VALUES ('" +
                item.inventory_id + "','" + item.inventory_sub.parent.category_id + 
                "','" + item.inventory_sub.subcategory_id + "','" + item.inventory_name + "','" + item.inventory_supplier + 
                "'," + item.inventory_carats + "," + item.inventory_weight.ToString("0.000")  + " );";
            MySqlCommand myCommand = new MySqlCommand(myInsertQuery, dbConn);

            try
            {
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                item.inventory_weight.ToString("0.000") + ", supplier='" + item.inventory_supplier + "' WHERE id='" +
                item.inventory_id + "';";
            MySqlCommand myCommand = new MySqlCommand(myUpdateQuery, dbConn);

            try
            {
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
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
                int rows = myCommand.ExecuteNonQuery();
                if (rows > 0) return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Error delete master_items! " + ex.Message);
            }

            return result;
        }

        #endregion
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
