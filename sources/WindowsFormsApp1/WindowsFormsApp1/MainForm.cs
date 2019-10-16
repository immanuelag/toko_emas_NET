using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TokoEmasAppNET
{
    public partial class MainForm : Form
    {
        /*
         * MySQL
         */
        public MySQLDBManager manDB;
        public string mysql_host;
        public string mysql_port;
        public string mysql_db_name;
        public string mysql_username;
        public string mysql_password;

        /*
         * Forms
         */
        private FormLogin frmLogin;
        private FormMasterUser frmUser;
        private FormMasterPrice frmMasterPrice;
        private FormMasterCategory frmMasterCategory;
        private FormMasterInventori frmMasterInventory;
        private FormSettings frmSettings;
        private FormSales frmSales;
        private FormSalesDetail frmSalesDetail;
        private FormPurchasing frmPurchasing;
        private FormServices frmServices;
        private FormStatusStocks frmStatusStocks;
        private FormSupplier frmSupplier;
        private FormSearchItem frmSearchItem;

        public MainForm()
        {
            InitializeComponent();

            // Initializing Forms
            InitializingForms();

            // Initializing DB Connection
            statusStrip1.Items[0].Text = "Not Connected";
            int port = 3306;
            try
            {
                mysql_host = ConfigurationManager.AppSettings["host"];
                mysql_port = ConfigurationManager.AppSettings["port"];
                mysql_db_name = ConfigurationManager.AppSettings["db_name"];
                mysql_username = ConfigurationManager.AppSettings["username"];
                mysql_password = ConfigurationManager.AppSettings["password"];
                port = int.Parse(mysql_port);
            }
            catch (Exception ex)
            {
                mysql_host = "localhost";
                mysql_port = "3306";
                mysql_db_name = "toko_emas_main_db";
                mysql_username = "root";
                mysql_password = "root";
            }
            
            manDB = new MySQLDBManager(mysql_host, port, mysql_db_name, mysql_username, mysql_password);
            string errMsg = string.Empty;
            
            //manDB.OpenConnection(ref errMsg);
            //if(!manDB.IsConnected)
            //{
            //    MessageBox.Show("Error Message: " + errMsg, "Error Connection", MessageBoxButtons.OK, MessageBoxIcon.Error);
                
            //}
            //else
            //{
            //    statusStrip1.Items[0].Text = "Connected";
            //}
            
        }

        private void InitializingForms()
        {
            // File Group
            frmLogin = new FormLogin();
            frmLogin.MdiParent = this;

            frmSettings = new FormSettings();
            frmSettings.MdiParent = this;

            // Master Group
            frmUser = new FormMasterUser();
            frmUser.MdiParent = this;

            frmMasterCategory = new FormMasterCategory();
            frmMasterCategory.MdiParent = this;

            frmMasterPrice = new FormMasterPrice();
            frmMasterPrice.MdiParent = this;

            frmMasterInventory = new FormMasterInventori();
            frmMasterInventory.MdiParent = this;

            //Transactions Group
            frmSales = new FormSales();
            frmSales.MdiParent = this;

            frmPurchasing = new FormPurchasing();
            frmPurchasing.MdiParent = this;

            frmServices = new FormServices();
            frmServices.MdiParent = this;

            frmStatusStocks = new FormStatusStocks();
            frmStatusStocks.MdiParent = this;

            frmSupplier = new FormSupplier();
            frmSupplier.MdiParent = this;

            frmSearchItem = new FormSearchItem();
            frmSupplier.MdiParent = this;
        }

        /// <summary>
        /// Menu Master User
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void UserToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmUser == null || frmUser.IsDisposed)
            {
                frmUser = new FormMasterUser();
                frmUser.MdiParent = this;
            }
            frmUser.Show();
        }

        /// <summary>
        /// Menu Login
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void LoginToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmLogin == null || frmLogin.IsDisposed)
            {
                frmLogin = new FormLogin();
                frmLogin.MdiParent = this;
            }

            frmLogin.Show();
        }

        /// <summary>
        /// Menu Exit
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ExitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //if(manDB.IsConnected)
            //{
            //    manDB.CloseConnection();
            //}

            Application.Exit();
        }

        /// <summary>
        /// Menu Master Category
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CategoryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(frmMasterCategory == null || frmMasterCategory.IsDisposed)
            {
                frmMasterCategory = new FormMasterCategory();
                frmMasterCategory.MdiParent = this;
            }

            frmMasterCategory.Show();
        }

        /// <summary>
        /// Menu Settings
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SettingsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmSettings == null || frmSettings.IsDisposed)
            {
                frmSettings = new FormSettings();
                frmSettings.MdiParent = this;
            }
            frmSettings.Show();
        }

        /// <summary>
        /// Menu Master Inventory
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void InventoryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmMasterInventory == null || frmMasterInventory.IsDisposed)
            {
                frmMasterInventory = new FormMasterInventori();
                frmMasterInventory.MdiParent = this;
            }
            frmMasterInventory.Show();
        }

        /// <summary>
        /// Menu Master Prices
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void PricesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmMasterPrice == null || frmMasterPrice.IsDisposed)
            {
                frmMasterPrice = new FormMasterPrice();
                frmMasterPrice.MdiParent = this;
            }
            frmMasterPrice.Show();
        }

        /// <summary>
        /// Menu Transactions Sales
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SalesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmSales == null || frmSales.IsDisposed)
            {
                frmSales = new FormSales();
                frmSales.MdiParent = this;
            }
            frmSales.Show();
        }

        /// <summary>
        /// Menu Transactions Purchasing
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void PurchasingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmPurchasing == null || frmPurchasing.IsDisposed)
            {
                frmPurchasing = new FormPurchasing();
                frmPurchasing.MdiParent = this;
            }
            frmPurchasing.Show();
        }

        /// <summary>
        /// Menu Transactions Services
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ServicesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (frmServices == null || frmServices.IsDisposed)
            {
                frmServices = new FormServices();
                frmServices.MdiParent = this;
            }
            frmServices.Show();
        }

        private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            //if (manDB.IsConnected)
            //{
            //    manDB.CloseConnection();
            //}
        }

        private void StatusStockToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(frmStatusStocks == null || frmStatusStocks.IsDisposed)
            {
                frmStatusStocks = new FormStatusStocks();
                frmStatusStocks.MdiParent = this;
            }
            frmStatusStocks.Show();
        }

        private void supplierToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(frmSupplier == null || frmSupplier.IsDisposed)
            {
                frmSupplier = new FormSupplier();
                frmSupplier.MdiParent = this;
            }
            frmSupplier.Show();
        }

        private void searchItemToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
