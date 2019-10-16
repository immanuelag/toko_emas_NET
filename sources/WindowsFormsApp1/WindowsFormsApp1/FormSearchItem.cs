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
    public partial class FormSearchItem : Form
    {
        public MySQLDBManager manager;
        public Dictionary<int, Category> comboDictionaryCat;
        public Dictionary<int, Subcategory> comboDictionarySub;
        public Dictionary<int, Carat> comboDictionaryCarat;
        public List<Category> categories;
        public List<Subcategory> subcategories;
        public List<Carat> carats;
        public List<Supplier> suppliers;
        public Inventory itemInv;

        public FormSearchItem()
        {
            InitializeComponent();
        }

        private void ResetSearch()
        {
            cmbCat.Enabled = false;
            cmbCat.SelectedIndex = -1;
            cmbSub.Enabled = false;
            cmbSub.SelectedIndex = -1;
            cmbCarat.Enabled = false;
            cmbCarat.SelectedIndex = -1;
            cmbStatus.Enabled = false;
            cmbStatus.SelectedIndex = -1;
            cmbSupplier.Enabled = false;
            cmbSupplier.SelectedIndex = -1;

            cbCat.Checked = false;
            cbSubcat.Checked = false;
            cbSupplier.Checked = false;
            cbItemID.Checked = false;
            cbNama.Checked = false;
            cbBerat.Checked = false;
            cbStatus.Checked = false;

            txbNama.Text = string.Empty;
            txbMinWeight.Text = string.Empty;
            txbMaxWeight.Text = string.Empty;
        }

        private void FormSearchItem_Load(object sender, EventArgs e)
        {
            comboDictionaryCat = new Dictionary<int, Category>();
            comboDictionarySub = new Dictionary<int, Subcategory>();
            comboDictionaryCarat = new Dictionary<int, Carat>();

            categories = new List<Category>();
            subcategories = new List<Subcategory>();
            carats = new List<Carat>();
            suppliers = new List<Supplier>();

            ResetSearch();

        }

        private void LoadComboSuppliers()
        {
            if (cmbSupplier.Items.Count > 0)
            {
                cmbSupplier.Items.Clear();
            }

            suppliers = manager.GetAllSupplier();
            for (int i = 0; i < suppliers.Count; i++)
            {
                cmbSupplier.Items.Add(suppliers[i].code);
            }
            cmbSupplier.SelectedIndex = 0;
        }

        private void LoadComboCategories()
        {
            if (cmbCat.Items.Count > 0)
            {
                cmbCat.Items.Clear();
                comboDictionaryCat.Clear();
            }

            //cbCatItemDetil.Items.Add("ALL");
            //comboDictionaryCat.Add(0, null);
            categories = manager.GetAllCategories();

            for (int i = 0; i < categories.Count; i++)
            {
                comboDictionaryCat.Add(i, categories[i]);
                cmbCat.Items.Add(categories[i].category_name);
            }

            cmbCat.SelectedIndex = 0;
        }

        private void LoadComboSubCategories()
        {
            
            cmbSub.Enabled = true;
            if (cmbSub.Items.Count > 0)
            {
                cmbSub.Items.Clear();
                comboDictionarySub.Clear();
            }

            
            Category sel_cat = null;
            comboDictionaryCat.TryGetValue(cmbCat.SelectedIndex, out sel_cat);
            subcategories = manager.GetAllSubcategoriesByCat(sel_cat.category_id);

            for (int i = 0; i < subcategories.Count; i++)
            {
                comboDictionarySub.Add(i, subcategories[i]);
                cmbSub.Items.Add(subcategories[i].subcategory_name);
            }

            if (subcategories.Count > 0)
            {
                cmbSub.SelectedIndex = 0;
            }
        }

        private void LoadComboCarat()
        {
            if (cmbCarat.Items.Count > 0)
            {
                cmbCarat.Items.Clear();
                comboDictionaryCarat.Clear();
            }

            //cbInvCarat.Items.Add("ALL");
            //comboDictionaryCat.Add(0, null);
            carats = manager.GetAllCarat();

            for (int i = 0; i < carats.Count; i++)
            {
                comboDictionaryCarat.Add(i, carats[i]);
                cmbCarat.Items.Add(carats[i].value);
            }

            cmbCarat.SelectedIndex = 0;
        }

        private void LoadComboStatus()
        {
            if (cmbStatus.Items.Count == 0)
            {

                cmbStatus.Items.Add("INSIDE");
                cmbStatus.Items.Add("OUTSIDE");
                cmbStatus.Items.Add("SOLD");
                cmbStatus.Items.Add("UNKNOWN");
            }

            if (cmbStatus.SelectedIndex < 0)
                cmbStatus.SelectedIndex = 0;
        }

        private void cbCat_CheckedChanged(object sender, EventArgs e)
        {
            if(cbCat.Checked)
            {
                cmbCat.Enabled = true;
                cmbCat.SelectedIndex = 0;
                LoadComboCategories();
            }
        }

        private void cbSubcat_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbNama_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbBerat_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbItemID_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbCarat_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbSupplier_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cbStatus_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}
