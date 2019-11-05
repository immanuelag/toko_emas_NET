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
        public int startYear, endYear;
        MainForm parent;

        //private List<StockItem>
        public FormItemStock()
        {
            InitializeComponent();

            stockItemsList = new List<StockItem>();
            startYear = 2019;
            endYear = DateTime.Now.Year;

            StatusStock = 0; // default to INSIDE
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {

        }

        private void FormItemStock_Load(object sender, EventArgs e)
        {
            parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            //load month and year combo box
            LoadMonthCombo();
            LoadYearCombo();
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
