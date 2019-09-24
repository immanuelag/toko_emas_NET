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
    public partial class FormMasterInventori : Form
    {
        public MySQLDBManager manager;
        public Dictionary<string,Inventory> itemsDict;
        public List<Inventory> itemList;
        public Dictionary<int, Category> comboDictionaryCat;
        public Dictionary<int, Subcategory> comboDictionarySub;
        public List<Category> categories;
        public List<Subcategory> subcategories;

        public int data_mode;

        public FormMasterInventori()
        {
            InitializeComponent();
            itemsDict = new Dictionary<string, Inventory>();
            itemList = new List<Inventory>();
            comboDictionaryCat = new Dictionary<int, Category>();
            comboDictionarySub = new Dictionary<int, Subcategory>();
            categories = new List<Category>();
            subcategories = new List<Subcategory>();
            data_mode = 0; //nothing
        }

        private void FormMasterInventori_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            LoadViewInventory();
            LoadComboCategories();
        }

        private void LoadViewInventory()
        {
            if (dgvInventory.Rows.Count > 0)
            {
                dgvInventory.Rows.Clear();
            }

            itemList = manager.GetAllInventories();

            for (int i = 0; i < itemList.Count; i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvInventory);

                row.Cells[0].Value = itemList[i].inventory_id;
                row.Cells[1].Value = itemList[i].inventory_sub.parent.category_name;
                row.Cells[2].Value = itemList[i].inventory_sub.subcategory_name;
                row.Cells[3].Value = itemList[i].inventory_name;
                Carat carat = manager.GetCaratByID(itemList[i].inventory_carats);
                row.Cells[4].Value = carat.value;
                row.Cells[5].Value = itemList[i].inventory_weight.ToString("0.000");

                //listCat.Add(categories[i].category_id, categories[i].category_name);
                dgvInventory.Rows.Add(row);
            }

        }

        private void LoadViewInventoryByCat(string cat_id)
        {
            if (dgvInventory.Rows.Count > 0)
            {
                dgvInventory.Rows.Clear();
            }

            itemList = manager.GetAllInventoriesByCat(cat_id);

            for (int i = 0; i < itemList.Count; i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvInventory);

                row.Cells[0].Value = itemList[i].inventory_id;
                row.Cells[1].Value = itemList[i].inventory_sub.parent.category_name;
                row.Cells[2].Value = itemList[i].inventory_sub.subcategory_name;
                row.Cells[3].Value = itemList[i].inventory_name;
                Carat carat = manager.GetCaratByID(itemList[i].inventory_carats);
                row.Cells[4].Value = carat.value;
                row.Cells[5].Value = itemList[i].inventory_weight.ToString("0.000");

                //listCat.Add(categories[i].category_id, categories[i].category_name);
                dgvInventory.Rows.Add(row);
            }

        }

        private void LoadViewInventoryBySub(string cat_id, string sub_id)
        {
            if (dgvInventory.Rows.Count > 0)
            {
                dgvInventory.Rows.Clear();
            }

            itemList = manager.GetAllInventoriesBySub(cat_id, sub_id);

            for (int i = 0; i < itemList.Count; i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvInventory);

                row.Cells[0].Value = itemList[i].inventory_id;
                row.Cells[1].Value = itemList[i].inventory_sub.parent.category_name;
                row.Cells[2].Value = itemList[i].inventory_sub.subcategory_name;
                row.Cells[3].Value = itemList[i].inventory_name;
                Carat carat = manager.GetCaratByID(itemList[i].inventory_carats);
                row.Cells[4].Value = carat.value;
                row.Cells[5].Value = itemList[i].inventory_weight.ToString("0.000");

                //listCat.Add(categories[i].category_id, categories[i].category_name);
                dgvInventory.Rows.Add(row);
            }

        }

        private void LoadComboCategories()
        {
            if (cbCatItems.Items.Count > 0)
            {
                cbCatItems.Items.Clear();
                comboDictionaryCat.Clear();
            }

            cbCatItems.Items.Add("ALL");
            comboDictionaryCat.Add(0, null);
            categories = manager.GetAllCategories();

            for (int i = 0; i < categories.Count; i++)
            {
                comboDictionaryCat.Add(i + 1, categories[i]);
                cbCatItems.Items.Add(categories[i].category_name);
            }

            cbCatItems.SelectedIndex = 0;
        }

        private void LoadComboSubCategories()
        {
            if (cbCatItems.SelectedIndex == 0)
            {
                cbSubItems.Enabled = false;
            }
            else
            {
                cbSubItems.Enabled = true;
                if (cbSubItems.Items.Count > 0)
                {
                    cbSubItems.Items.Clear();
                    comboDictionarySub.Clear();
                }

                cbSubItems.Items.Add("ALL");
                comboDictionarySub.Add(0, null);
                Category sel_cat = null;
                comboDictionaryCat.TryGetValue(cbCatItems.SelectedIndex, out sel_cat);
                subcategories = manager.GetAllSubcategoriesByCat(sel_cat.category_id);

                for (int i = 0; i < subcategories.Count; i++)
                {
                    comboDictionarySub.Add(i + 1, subcategories[i]);
                    cbSubItems.Items.Add(subcategories[i].subcategory_name);
                }

                cbSubItems.SelectedIndex = 0;
            }
        }

        private void CbCatItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbCatItems.SelectedIndex == 0)
            {
                LoadViewInventory();
                cbSubItems.Enabled = false;
            }
            else
            {
                cbSubItems.Enabled = true;
                LoadComboSubCategories();
                Category sel_cat = null;
                comboDictionaryCat.TryGetValue(cbCatItems.SelectedIndex, out sel_cat);
                LoadViewInventoryByCat(sel_cat.category_id);
            }
        }

        private void CbSubItems_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(cbSubItems.SelectedIndex == 0)
            {
                Category sel_cat = null;
                comboDictionaryCat.TryGetValue(cbCatItems.SelectedIndex, out sel_cat);
                LoadViewInventoryByCat(sel_cat.category_id);
            }
            else
            {
                Subcategory sel_sub = null;
                comboDictionarySub.TryGetValue(cbSubItems.SelectedIndex, out sel_sub);
                LoadViewInventoryBySub(sel_sub.parent.category_id, sel_sub.subcategory_id);
            }
        }
    }
}
