using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TokoEmasAppNET
{
    public partial class FormItemStock : Form
    {
        public int StatusStock;
        public MySQLDBManager manager;
        public List<StockItem> stockItemsList;
        public Dictionary<int, StockItem> dictStockItem;
        public int startYear, endYear;
        FormItemStocksDetails frmDetails;
        MainForm parent;
        int data_mode;

        public FormItemStock()
        {
            InitializeComponent();

            stockItemsList = new List<StockItem>();
            dictStockItem = new Dictionary<int, StockItem>();
            startYear = 2019;
            endYear = DateTime.Now.Year;

            StatusStock = 1; // default to INSIDE
            data_mode = 0; // default
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            gbItemStocks.Enabled = true;
            int newID = manager.GetStockItemNewID();
            if(newID == -1)
            {
                MessageBox.Show("Error Get New ID!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                gbItemStocks.Enabled = false;
            } 
            else
            {
                dtpTimeStock.Value = DateTime.Now;
                data_mode = 1; // add new
            }
        }

        private void FormItemStock_Load(object sender, EventArgs e)
        {
            parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            //load month and year combo box
            LoadMonthCombo();
            LoadYearCombo();
            LoadStockItemListView();

            if(StatusStock == 1)
            {
                lblTitle.Text = "STOCK CHECK INSIDE";
            } 
            else
            {
                lblTitle.Text = "STOCK CHECK OUTSIDE";
            }
        }

        private void LoadStockItemListView()
        {
            if(dgvStockItem.Rows.Count > 0)
            {
                dgvStockItem.Rows.Clear();
                dictStockItem.Clear();
            }

            stockItemsList = manager.GetAllStockItems(StatusStock);

            for(int i=0;i<stockItemsList.Count;i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvStockItem);

                row.Cells[0].Value = stockItemsList[i].id;
                row.Cells[1].Value = stockItemsList[i].timestamp;
                row.Cells[2].Value = stockItemsList[i].user;
                row.Cells[3].Value = stockItemsList[i].GetStatus();

                dgvStockItem.Rows.Add(row);
                dictStockItem.Add(stockItemsList[i].id, stockItemsList[i]);
            }
        }

        private void LoadYearCombo()
        {
            if (cbYear.Items.Count > 0) cbYear.Items.Clear();

            for(int y=startYear;y<endYear;y++)
            {
                cbYear.Items.Add(y);
            }
        }

        private void LoadMonthCombo()
        {
            if (cbMonth.Items.Count > 0) cbMonth.Items.Clear();

            DateTime test = new DateTime(2019, 1, 1);
            for (int m=0;m<12;m++)
            {
                DateTime t=test.AddMonths(m);
                cbMonth.Items.Add(t.ToString("MMMM"));
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if(data_mode == 1)
            {
                
            } 
            else if(data_mode == 2)
            {

            }
        }

        private void btnChecking_Click(object sender, EventArgs e)
        {
            if(frmDetails == null || frmDetails.IsDisposed)
            {
                frmDetails = new FormItemStocksDetails();
                frmDetails.manager = manager;
                
            }
            frmDetails.Show();
        }
    }
}
