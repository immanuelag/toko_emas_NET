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
    public partial class FormStatusStocks : Form
    {
        public MySQLDBManager manager;
        public Label[] labelsCategoryName;
        public Label[] labelsCategoryTotal;
        public List<Category> listCategory;
        public int numCat;

        public FormStatusStocks()
        {
            InitializeComponent();
        }

        private void FormStatusStocks_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            lblTotalStocks.Text = manager.GetCountInventory().ToString();
            lblTotIn.Text = manager.GetCountInventoryInside().ToString();
            lblTotOut.Text = manager.GetCountInventoryOutside().ToString();

            numCat = manager.GetCountCategory();
            labelsCategoryName = new Label[numCat];
            labelsCategoryTotal = new Label[numCat];
            listCategory = manager.GetAllCategories();

            for(int i = 0; i < numCat;i++)
            {
                labelsCategoryName[i] = new Label();
                labelsCategoryName[i].Text = "Total " + listCategory[i].category_name;
                flowPanel1.Controls.Add(labelsCategoryName[i]);

                labelsCategoryTotal[i] = new Label();
                labelsCategoryTotal[i].Text = manager.GetCountInventoryByCat(listCategory[i].category_id).ToString();
                flowPanel1.Controls.Add(labelsCategoryTotal[i]);
            }
            
        }

        private void BtnRefresh_Click(object sender, EventArgs e)
        {
            lblTotalStocks.Text = manager.GetCountInventory().ToString();
            lblTotIn.Text = manager.GetCountInventoryInside().ToString();
            lblTotOut.Text = manager.GetCountInventoryOutside().ToString();

            listCategory = manager.GetAllCategories();
            for (int i = 0; i < numCat; i++)
            {
                labelsCategoryTotal[i].Text = manager.GetCountInventoryByCat(listCategory[i].category_id).ToString();
            }
        }
    }
}
