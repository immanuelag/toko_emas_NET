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
    public partial class FormMasterCategory : Form
    {
        public MySQLDBManager manager;
        public List<Category> categories;
        //public Dictionary<string, string> listCat;
        public Dictionary<int, Category> comboDictionary;
        public List<Subcategory> subcategories;
        public int data_mode_cat;
        public int data_mode_sub;
        public string cat_id_selected;
        public string sub_id_selected;

        public FormMasterCategory()
        {
            InitializeComponent();
            categories = new List<Category>();
            comboDictionary = new Dictionary<int, Category>();
            //listCat = new Dictionary<string, string>();
            gbCategory.Enabled = false;
            gbSubCat.Enabled = false;
            data_mode_cat = 0; //nothing
            data_mode_sub = 0;
        }

        private void FormMasterCategory_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            LoadViewCategories();
            LoadComboCategories();
        }

        private void LoadViewCategories()
        {
            if (dgvCategory.Rows.Count > 0)
            {
                dgvCategory.Rows.Clear();
            }
            
            categories = manager.GetAllCategories();

            for (int i = 0; i < categories.Count; i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvCategory);

                row.Cells[0].Value = categories[i].category_id;
                row.Cells[1].Value = categories[i].category_name;

                //listCat.Add(categories[i].category_id, categories[i].category_name);
                dgvCategory.Rows.Add(row);
            }
            
        }

        private void LoadComboCategories()
        {
            if (cbCatName.Items.Count > 0)
            {
                cbCatName.Items.Clear();
                comboDictionary.Clear();
            }

            cbCatName.Items.Add("ALL");
            comboDictionary.Add(0, null);

            for (int i = 0; i < categories.Count; i++)
            {
                comboDictionary.Add(i + 1, categories[i]);
                cbCatName.Items.Add(categories[i].category_name);
            }

            cbCatName.SelectedIndex = 0;
        }

        private void LoadViewSubcategories()
        {
            if (dgvSubcat.Rows.Count > 0)
            {
                dgvSubcat.Rows.Clear();
            }

            if (cbCatName.SelectedIndex == 0) // select all
            {
                subcategories = manager.GetAllSubcategories();
            }
            else
            {
                Category cats;
                if (comboDictionary.TryGetValue(cbCatName.SelectedIndex, out cats))
                {
                    subcategories = manager.GetAllSubcategoriesByCat(cats.category_id);
                }
            }

            for (int i = 0; i < subcategories.Count; i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvSubcat);

                row.Cells[0].Value = subcategories[i].subcategory_id;
                row.Cells[1].Value = subcategories[i].parent.category_name;
                row.Cells[2].Value = subcategories[i].subcategory_name;
                dgvSubcat.Rows.Add(row);
            }
        }

        private void CbCatName_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadViewSubcategories();
            ClearGBSub();
        }

        private void BtnCatAdd_Click(object sender, EventArgs e)
        {
            gbCategory.Enabled = true;
            txbCatID.Focus();
            data_mode_cat = 1;//Add mode
        }

        private void ClearGBSub()
        {
            txbSubID.Text = "";
            txbSubName.Text = "";
            gbSubCat.Enabled = false;
            data_mode_sub = 0;
        }

        private void ClearGBCategory()
        {
            txbCatID.Text = "";
            txbCatName.Text = "";
            gbCategory.Enabled = false;
            data_mode_cat = 0;
        }

        private void BtnCatCancel_Click(object sender, EventArgs e)
        {
            ClearGBCategory();
        }

        private void BtnCatSave_Click(object sender, EventArgs e)
        {
            if (txbCatID.TextLength > 0 & txbCatName.TextLength > 0)
            {
                Category new_cat = new Category(txbCatID.Text, txbCatName.Text);
                try
                {
                    if (data_mode_cat == 1)
                    {
                        if (manager.AddNewCategory(new_cat))
                        {
                            MessageBox.Show("Add new category succeed!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                    else if(data_mode_cat == 2)
                    {
                        if(manager.UpdateCategory(new_cat))
                        {
                            MessageBox.Show("Update category succeed!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                LoadViewCategories();
                LoadComboCategories();
                ClearGBCategory();
            }
            else
            {
                MessageBox.Show("Category ID and Name can't be empty!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txbCatID.Focus();
            }
        }

        private void BtnCatEdit_Click(object sender, EventArgs e)
        {
            if(dgvCategory.SelectedRows.Count > 0)
            {
                gbCategory.Enabled = true;
                DataGridViewRow row = dgvCategory.SelectedRows[0];

                txbCatID.Text = (string)row.Cells[0].Value;
                txbCatName.Text = (string)row.Cells[1].Value;
                data_mode_cat = 2; //Edit mode
            }
            else
            {
                MessageBox.Show("Please select category item first!");
            }
        }

        private void BtnSubAdd_Click(object sender, EventArgs e)
        {
            if (cbCatName.SelectedIndex != 0)
            {
                gbSubCat.Enabled = true;
                txbSubID.Enabled = true;
                txbSubID.Focus();
                data_mode_sub = 1;
            }
            else
            {
                MessageBox.Show("Please select category first!");
                cbCatName.Focus();
            }
        }

        private void BtnSubEdit_Click(object sender, EventArgs e)
        {
            if (dgvSubcat.SelectedRows.Count > 0)
            {
                gbSubCat.Enabled = true;
                DataGridViewRow row = dgvSubcat.SelectedRows[0];

                txbSubID.Text = (string)row.Cells[0].Value;
                txbSubID.Enabled = false;
                txbSubName.Text = (string)row.Cells[2].Value;
                cat_id_selected = (string)row.Cells[1].Value;
                cat_id_selected = cat_id_selected.Substring(0, 1);
                sub_id_selected = txbSubID.Text;
                data_mode_sub = 2; //Edit mode
            }
            else
            {
                MessageBox.Show("Please select subcategory item first!");
            }
        }

        private void BtnSubSave_Click(object sender, EventArgs e)
        {
            if (txbSubID.TextLength > 0 & txbSubName.TextLength > 0)
            {
                Category cats;
                if (!comboDictionary.TryGetValue(cbCatName.SelectedIndex, out cats))
                {
                    return;
                }
                if(cats != null)
                //if (comboDictionary.TryGetValue(cbCatName.SelectedIndex, out cats))
                {

                    Subcategory new_subcat = new Subcategory(cats, txbSubID.Text, txbSubName.Text);
                    try
                    {
                        if (data_mode_sub == 1)
                        {
                            if (manager.AddNewSubcategory(new_subcat))
                            {
                                MessageBox.Show("Add new subcategory succeed!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            }
                        }
                        else if (data_mode_sub == 2)
                        {
                            if (manager.UpdateSubcategory(new_subcat))
                            {
                                MessageBox.Show("Update subcategory succeed!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }

                    LoadViewSubcategories();
                    ClearGBSub();
                }
            }
            else
            {
                MessageBox.Show("Subcategory ID and Name can't be empty!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txbSubID.Focus();
            }
        }

        private void BtnSubCancel_Click(object sender, EventArgs e)
        {
            ClearGBSub();
        }

        private void BtnCatDel_Click(object sender, EventArgs e)
        {
            if (dgvCategory.SelectedRows.Count > 0)
            {
                gbCategory.Enabled = true;
                DataGridViewRow row = dgvCategory.SelectedRows[0];

                Category sel_cat = new Category((string)row.Cells[0].Value, (string)row.Cells[1].Value);
                if(MessageBox.Show("Are you sure want to delete ID: " + sel_cat.category_id + "?",
                    "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    try
                    {
                        if (manager.DeleteCategory(sel_cat))
                        {
                            MessageBox.Show("Category has been deleted!");
                        }
                        else
                        {

                        }
                    }
                    catch(Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }

                LoadViewCategories();
                LoadComboCategories();
                ClearGBCategory();
            }
            else
            {
                MessageBox.Show("Please select category item first!");
            }
        }

        private void BtnSubDel_Click(object sender, EventArgs e)
        {
            if (dgvSubcat.SelectedRows.Count > 0 && cbCatName.SelectedIndex > 0)
            {
                
                DataGridViewRow row = dgvSubcat.SelectedRows[0];
                Category parent;
                comboDictionary.TryGetValue(cbCatName.SelectedIndex, out parent);

                Subcategory sel_cat = new Subcategory(parent, (string)row.Cells[0].Value, (string)row.Cells[2].Value);
                if (MessageBox.Show("Are you sure want to delete ID: " + sel_cat.subcategory_id + "?",
                    "Confirmation", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    try
                    {
                        if (manager.DeleteSubcategory(sel_cat))
                        {
                            MessageBox.Show("Subcategory has been deleted!");
                        }
                        else
                        {

                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }

                LoadViewSubcategories();
            }
            else
            {
                MessageBox.Show("Please select subcategory item first!");
            }
        }
    }
}
