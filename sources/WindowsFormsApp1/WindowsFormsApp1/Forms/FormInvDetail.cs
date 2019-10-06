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
    public partial class FormInvDetail : Form
    {
        public Dictionary<int, Category> comboDictionaryCat;
        public Dictionary<int, Subcategory> comboDictionarySub;
        public Dictionary<int, Carat> comboDictionaryCarat;
        public List<Category> categories;
        public List<Subcategory> subcategories;
        public List<Carat> carats;
        public MySQLDBManager manager;
        public FormMasterInventori frmParent;
        public int data_mode;
        public Inventory itemInv;

        public FormInvDetail(FormMasterInventori parent)
        {
            InitializeComponent();
            frmParent = parent;
        }

        public void SetDataMode(int mode)
        {
            data_mode = mode;
        }

        public void SetDBManager(MySQLDBManager man)
        {
            manager = man;
        }

        public void SetInventory(Inventory _inventory)
        {
            itemInv = _inventory;
        }

        private void FormInvDetail_Load(object sender, EventArgs e)
        {
            comboDictionaryCat = new Dictionary<int, Category>();
            comboDictionarySub = new Dictionary<int, Subcategory>();
            comboDictionaryCarat = new Dictionary<int, Carat>();

            categories = new List<Category>();
            subcategories = new List<Subcategory>();
            carats = new List<Carat>();

            LoadComboCarat();
            LoadComboCategories();

            if(data_mode == 2)
            {
                btnGenID.Enabled = false;
                txbInvDetilID.Text = itemInv.inventory_id;
                txbInvName.Text = itemInv.inventory_name;
                txbInvWeight.Text = itemInv.inventory_weight.ToString("0.000");

                
                for(int i=0; i < carats.Count; i++)
                {
                    if(carats[i].id == itemInv.inventory_carats)
                    {
                        cbInvCarat.SelectedIndex = i;
                        break;
                    }
                }
                
                for (int i = 0; i < categories.Count; i++)
                {
                    if (categories[i].category_id == itemInv.inventory_sub.parent.category_id)
                    {
                        cbCatItemDetil.SelectedIndex = i;
                        break;
                    }
                }

                for (int i = 0; i < subcategories.Count; i++)
                {
                    if (subcategories[i].subcategory_id == itemInv.inventory_sub.subcategory_id)
                    {
                        cbSubCatItemDetil.SelectedIndex = i;
                        break;
                    }
                }
            } 
            else if(data_mode == 1)
            {
                btnGenID.Enabled = true;
            } 
        }

        private void LoadComboCategories()
        {
            if (cbCatItemDetil.Items.Count > 0)
            {
                cbCatItemDetil.Items.Clear();
                comboDictionaryCat.Clear();
            }

            //cbCatItemDetil.Items.Add("ALL");
            //comboDictionaryCat.Add(0, null);
            categories = manager.GetAllCategories();

            for (int i = 0; i < categories.Count; i++)
            {
                comboDictionaryCat.Add(i, categories[i]);
                cbCatItemDetil.Items.Add(categories[i].category_name);
            }

            cbCatItemDetil.SelectedIndex = 0;
        }

        private void LoadComboSubCategories()
        {
            //if (cbCatItemDetil.SelectedIndex == 0)
            //{
            //    cbSubCatItemDetil.Enabled = false;
            //}
            //else
            //{
                cbSubCatItemDetil.Enabled = true;
                if (cbSubCatItemDetil.Items.Count > 0)
                {
                    cbSubCatItemDetil.Items.Clear();
                    comboDictionarySub.Clear();
                }

                //cbSubCatItemDetil.Items.Add("ALL");
                //comboDictionarySub.Add(0, null);
                Category sel_cat = null;
                comboDictionaryCat.TryGetValue(cbCatItemDetil.SelectedIndex, out sel_cat);
                subcategories = manager.GetAllSubcategoriesByCat(sel_cat.category_id);

                for (int i = 0; i < subcategories.Count; i++)
                {
                    comboDictionarySub.Add(i, subcategories[i]);
                    cbSubCatItemDetil.Items.Add(subcategories[i].subcategory_name);
                }

            if (subcategories.Count > 0)
            {
                cbSubCatItemDetil.SelectedIndex = 0;
            }
            //}
        }

        private void LoadComboCarat()
        {
            if (cbInvCarat.Items.Count > 0)
            {
                cbInvCarat.Items.Clear();
                comboDictionaryCarat.Clear();
            }

            //cbInvCarat.Items.Add("ALL");
            //comboDictionaryCat.Add(0, null);
            carats = manager.GetAllCarat();

            for (int i = 0; i < carats.Count; i++)
            {
                comboDictionaryCarat.Add(i, carats[i]);
                cbInvCarat.Items.Add(carats[i].value);
            }

            cbInvCarat.SelectedIndex = 0;
        }

        private void BtnInvCancel_Click(object sender, EventArgs e)
        {
            frmParent.data_mode = 0;
            this.Hide();
        }

        private void BtnInvSave_Click(object sender, EventArgs e)
        {
            if(manager.IsConnected)
            {
                Inventory item = new Inventory();
                item.inventory_id = txbInvDetilID.Text;
                Subcategory sel_sub = null;
                comboDictionarySub.TryGetValue(cbSubCatItemDetil.SelectedIndex, out sel_sub);
                item.inventory_sub = sel_sub;
                item.inventory_name = txbInvName.Text;
                item.inventory_weight = float.Parse(txbInvWeight.Text);
                Carat carat = null;
                comboDictionaryCarat.TryGetValue(cbInvCarat.SelectedIndex, out carat);
                item.inventory_carats = carat.id;

                try
                {
                    if (data_mode == 1)
                    {
                        if (manager.AddNewInventory(item))
                        {
                            MessageBox.Show("Add new items succeed!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            this.Hide();

                            frmParent.data_mode = 0;
                            frmParent.Refresh();
                        }
                    }
                    else if(data_mode == 2)
                    {
                        if (manager.UpdateInventory(item))
                        {
                            MessageBox.Show("Update items succeed!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            this.Hide();

                            frmParent.data_mode = 0;
                            frmParent.Refresh();
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void ClearAll()
        {

        }

        private void CbCatItemDetil_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadComboSubCategories();
        }

        private void btnGenID_Click(object sender, EventArgs e)
        {
            Category sel_cat = null;
            comboDictionaryCat.TryGetValue(cbCatItemDetil.SelectedIndex, out sel_cat);
            Subcategory sel_sub = null;
            comboDictionarySub.TryGetValue(cbSubCatItemDetil.SelectedIndex, out sel_sub);
            string LastInvID = manager.GetLastInventoryIDByCatSub(sel_cat.category_id, sel_sub.subcategory_id);
            if(LastInvID == string.Empty)
            {
                txbInvDetilID.Text = sel_cat.category_id + sel_sub.subcategory_id + "001";
            }
            else
            {
                int new_id = int.Parse(LastInvID.Substring(2, 3)) + 1;
                txbInvDetilID.Text = sel_cat.category_id + sel_sub.subcategory_id + new_id.ToString("000"); 
            }
        }
    }
}
