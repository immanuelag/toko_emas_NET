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
    public partial class FormSearchItem : FormInvDetailParent
    {
        public MySQLDBManager manager;
        public Dictionary<int, Category> comboDictionaryCat;
        public Dictionary<int, Subcategory> comboDictionarySub;
        public Dictionary<int, Carat> comboDictionaryCarat;
        public Dictionary<int, string> searchKeyword;
        public Dictionary<string, Inventory> itemsDict;
        public List<Category> categories;
        public List<Subcategory> subcategories;
        public List<Carat> carats;
        public List<Supplier> suppliers;
        public Inventory itemInv;
        public List<Inventory> itemList;
        bool searchMode = false;

        private int numSearch;

        public FormSearchItem()
        {
            InitializeComponent();
        }

        private void ResetSearch()
        {
            cmbCat.Enabled = false;
            cmbCat.Items.Clear();
            cmbSub.Enabled = false;
            cmbSub.Items.Clear();
            cmbCarat.Enabled = false;
            cmbCarat.Items.Clear();
            cmbStatus.Enabled = false;
            cmbStatus.Items.Clear();
            cmbSupplier.Enabled = false;
            cmbSupplier.Items.Clear();

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

            numSearch = 0;
        }

        private void FormSearchItem_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            comboDictionaryCat = new Dictionary<int, Category>();
            comboDictionarySub = new Dictionary<int, Subcategory>();
            comboDictionaryCarat = new Dictionary<int, Carat>();
            searchKeyword = new Dictionary<int, string>();

            categories = new List<Category>();
            subcategories = new List<Subcategory>();
            carats = new List<Carat>();
            suppliers = new List<Supplier>();
            itemList = new List<Inventory>();
            itemsDict = new Dictionary<string, Inventory>();
            itemList = manager.GetAllInventories();
            FillDGViewInventory();

            ResetSearch();

        }

        public override void RefreshView()
        {
            if (searchMode)
            {
                itemList = manager.GetAllInventoriesByKeyword(searchKeyword);
            }
            else
            {
                itemList = manager.GetAllInventories();
            }
            FillDGViewInventory();
        }
        private void FillDGViewInventory()
        {
            if (dgvSearch.Rows.Count > 0)
            {
                dgvSearch.Rows.Clear();
                itemsDict.Clear();
            }

            for (int i = 0; i < itemList.Count; i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvSearch);

                row.Cells[0].Value = itemList[i].inventory_id;
                row.Cells[1].Value = itemList[i].inventory_sub.parent.category_name;
                row.Cells[2].Value = itemList[i].inventory_sub.subcategory_name;
                row.Cells[3].Value = itemList[i].inventory_name;
                Carat carat = manager.GetCaratByID(itemList[i].inventory_carats);
                row.Cells[4].Value = carat.value;
                row.Cells[5].Value = itemList[i].inventory_weight.ToString("0.000");
                row.Cells[6].Value = itemList[i].inventory_supplier.code;
                row.Cells[7].Value = itemList[i].GetStatus();

                //listCat.Add(categories[i].category_id, categories[i].category_name);
                itemsDict.Add(itemList[i].inventory_id, itemList[i]);
                dgvSearch.Rows.Add(row);
            }

            //nRowTotal = dgvSearch.Rows.Count;
            //lblTotalRows.Text = dgvSearch.ToString();
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
                LoadComboCategories();
                cmbCat.SelectedIndex = 0;
            }
            else
            {
                if(cbSubcat.Checked)
                {
                    cbSubcat.Checked = false;
                    cmbSub.Enabled = false;
                    cmbSub.SelectedIndex = -1;
                }
                cmbCat.Enabled = false;
                cmbCat.SelectedIndex = -1;
            }
        }

        private void cbSubcat_CheckedChanged(object sender, EventArgs e)
        {
            if(cbSubcat.Checked)
            {
                if(cbCat.Checked)
                {
                    cmbSub.Enabled = true;
                    LoadComboSubCategories();
                    cmbSub.SelectedIndex = 0;
                    numSearch++;
                }
                else
                {
                    MessageBox.Show("Please select category first!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    cbSubcat.Checked = false;
                    if (numSearch > 0) numSearch--;
                }
            }
            else
            {
                cmbSub.Enabled = false;
                cmbSub.SelectedIndex = -1;
            }
        }

        private void cbNama_CheckedChanged(object sender, EventArgs e)
        {
            if(cbNama.Checked)
            {
                txbNama.Enabled = true;
                txbNama.Focus();
            }
            else
            {
                txbNama.Enabled = false;
                txbNama.Clear();
            }
        }

        private void cbBerat_CheckedChanged(object sender, EventArgs e)
        {
            if(cbBerat.Checked)
            {
                txbMinWeight.Enabled = true;
                txbMaxWeight.Enabled = true;
                txbMinWeight.Focus();
            }
            else
            {
                txbMinWeight.Enabled = false;
                txbMaxWeight.Enabled = false;
            }
        }

        private void cbItemID_CheckedChanged(object sender, EventArgs e)
        {
            if(cbItemID.Checked)
            {
                txbItemID.Enabled = true;
                txbItemID.Focus();
            }
            else
            {
                txbItemID.Enabled = false;

            }
        }

        private void cbCarat_CheckedChanged(object sender, EventArgs e)
        {
            if(cbCarat.Checked)
            {
                cmbCarat.Enabled = true;
                LoadComboCarat();
                cmbCarat.SelectedIndex = 0;
            }
            else
            {
                cmbCarat.Enabled = false;
                cmbCarat.SelectedIndex = -1;
            }
        }

        private void cbSupplier_CheckedChanged(object sender, EventArgs e)
        {
            if(cbSupplier.Checked)
            {
                cmbSupplier.Enabled = true;
                LoadComboSuppliers();
                cmbSupplier.SelectedIndex = 0;
            }
            else
            {
                cmbSupplier.Enabled = false;
                cmbSupplier.SelectedIndex = -1;
            }
        }

        private void cbStatus_CheckedChanged(object sender, EventArgs e)
        {
            if(cbStatus.Checked)
            {
                cmbStatus.Enabled = true;
                LoadComboStatus();
                cmbStatus.SelectedIndex = 0;
            }
            else
            {
                cmbStatus.Enabled = false;
                cmbStatus.SelectedIndex = -1;
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            searchKeyword.Clear();

            if(cbCat.Checked)
            {
                Category cat = null;
                comboDictionaryCat.TryGetValue(cmbCat.SelectedIndex, out cat);
                if (cat != null) {
                    searchKeyword.Add(0, cat.category_id);
                }
            }

            if(cbSubcat.Checked)
            {
                Subcategory subcat = null;
                comboDictionarySub.TryGetValue(cmbSub.SelectedIndex,out subcat);
                if(subcat != null)
                {
                    searchKeyword.Add(1, subcat.subcategory_id);
                }
            }

            if(cbSupplier.Checked)
            {
                searchKeyword.Add(2, (string)cmbSupplier.SelectedItem);
            }

            if(cbCarat.Checked)
            {
                Carat carat = null;
                comboDictionaryCarat.TryGetValue(cmbCarat.SelectedIndex, out carat);
                if (carat != null) {
                    searchKeyword.Add(3, carat.id.ToString());
                }
            }

            if(cbStatus.Checked)
            {
                searchKeyword.Add(4, (cmbStatus.SelectedIndex + 1).ToString());
            }

            if(cbItemID.Checked)
            {
                searchKeyword.Add(5, txbItemID.Text);
            }

            if(cbNama.Checked)
            {
                searchKeyword.Add(6, txbNama.Text);
            }

            if(cbBerat.Checked)
            {
                if(txbMinWeight.TextLength > 0)
                {
                    searchKeyword.Add(7, txbMinWeight.Text);
                }
                
                if(txbMaxWeight.TextLength > 0)
                {
                    searchKeyword.Add(8, txbMaxWeight.Text);
                }
            }

            if(searchKeyword.Count > 0)
            {
                itemList = manager.GetAllInventoriesByKeyword(searchKeyword);
                FillDGViewInventory();
                searchMode = true;
            }
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            if(dgvSearch.SelectedRows.Count == 1)
            {
                FormInvDetail formInvDetail = new FormInvDetail(this);
                data_mode = 2;
                formInvDetail.SetDataMode(data_mode);
                formInvDetail.SetDBManager(manager);
                DataGridViewRow row = dgvSearch.SelectedRows[0];
                string inv_id = (string)row.Cells[0].Value;
                Inventory sel_inv = null;
                itemsDict.TryGetValue(inv_id, out sel_inv);
                if (sel_inv != null)
                {
                    formInvDetail.SetInventory(sel_inv);

                    formInvDetail.ShowDialog(this);
                }
            }
            else
            {
                MessageBox.Show("Please select items first!");
                dgvSearch.Focus();
            }
        }
    }
}
