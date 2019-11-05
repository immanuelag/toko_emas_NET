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
        public MySQLDBManager manager;
        public FormItemStocksDetails frmDetails;

        //private List<StockItem>
        public FormItemStock()
        {
            InitializeComponent();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {

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
