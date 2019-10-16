using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Excel = Microsoft.Office.Interop.Excel;

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
        public FormInvDetail frmInvDetail;

        public int nRowTotal;
        public int nRowSelected;

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
            nRowSelected = 0;
            nRowTotal = 0;
        }

        private void FormMasterInventori_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            LoadViewInventory();
            LoadComboCategories();
            LoadComboStatus();
        }

        public void RefreshView()
        {
            LoadViewInventory();
            LoadComboCategories();
        }

        private void FillDGViewInventory()
        {
            if (dgvInventory.Rows.Count > 0)
            {
                dgvInventory.Rows.Clear();
                itemsDict.Clear();
            }

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
                row.Cells[6].Value = itemList[i].inventory_supplier.code;
                row.Cells[7].Value = itemList[i].GetStatus();

                //listCat.Add(categories[i].category_id, categories[i].category_name);
                itemsDict.Add(itemList[i].inventory_id, itemList[i]);
                dgvInventory.Rows.Add(row);
            }

            nRowTotal = dgvInventory.Rows.Count;
            lblTotalRows.Text = nRowTotal.ToString();
        }

        private void LoadViewInventory()
        {
            if (cbStatus.SelectedIndex <= 0)
                itemList = manager.GetAllInventories();
            else
                itemList = manager.GetAllInventoriesByStatus(cbStatus.SelectedIndex);

            FillDGViewInventory();

        }

        private void LoadViewInventoryByCat(string cat_id)
        {
            if (dgvInventory.Rows.Count > 0)
            {
                dgvInventory.Rows.Clear();
                itemsDict.Clear();
            }

            if (cbStatus.SelectedIndex <= 0)
                itemList = manager.GetAllInventoriesByCat(cat_id);
            else
                itemList = manager.GetAllInventoriesByCatStatus(cat_id, cbStatus.SelectedIndex);

            FillDGViewInventory();

        }

        private void LoadViewInventoryBySub(string cat_id, string sub_id)
        {
            if (dgvInventory.Rows.Count > 0)
            {
                dgvInventory.Rows.Clear();
                itemsDict.Clear();
            }

            if (cbStatus.SelectedIndex <= 0)
                itemList = manager.GetAllInventoriesBySub(cat_id, sub_id);
            else
                itemList = manager.GetAllInventoriesBySubStatus(cat_id, sub_id, cbStatus.SelectedIndex);

            FillDGViewInventory();

        }

        private void LoadComboStatus()
        {
            if(cbStatus.Items.Count == 0)
            {
                cbStatus.Items.Add("ALL");
                cbStatus.Items.Add("INSIDE");
                cbStatus.Items.Add("OUTSIDE");
                cbStatus.Items.Add("SOLD");
                cbStatus.Items.Add("UNKNOWN");
            }

            if(cbStatus.SelectedIndex < 0)
                cbStatus.SelectedIndex = 0;
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

        private void BtnAddItems_Click(object sender, EventArgs e)
        {
            if (frmInvDetail == null || frmInvDetail.IsDisposed)
            {
                frmInvDetail = new FormInvDetail(this);
                //frmInvDetail.MdiParent = this;
            }
            data_mode = 1;
            frmInvDetail.SetDataMode(data_mode);
            frmInvDetail.SetDBManager(manager);
            frmInvDetail.ShowDialog(this);
        }

        private void BtnEditItems_Click(object sender, EventArgs e)
        {
            if (dgvInventory.SelectedRows.Count == 1)
            {
                if (frmInvDetail == null || frmInvDetail.IsDisposed)
                {
                    frmInvDetail = new FormInvDetail(this);
                    //frmInvDetail.MdiParent = this;
                }
                data_mode = 2;
                frmInvDetail.SetDataMode(data_mode);
                frmInvDetail.SetDBManager(manager);
                DataGridViewRow row = dgvInventory.SelectedRows[0];
                string inv_id = (string)row.Cells[0].Value;
                Inventory sel_inv = null;
                itemsDict.TryGetValue(inv_id, out sel_inv);
                frmInvDetail.SetInventory(sel_inv);

                frmInvDetail.ShowDialog(this);
            }
            else
            {
                MessageBox.Show("Please select items first!");
            }
        }

        private void cbStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(cbCatItems.SelectedIndex == 0)
            {
                LoadViewInventory();
            } 
            else
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

        private void BtnXCode_Click(object sender, EventArgs e)
        {
            if (dgvInventory.SelectedRows.Count > 1 && dgvInventory.SelectedRows.Count <= 10)
            {
                this.Cursor = Cursors.WaitCursor;
                Excel.Application MyApp = new Excel.Application();
                Excel.Workbook xlWorkBook;
                Excel.Worksheet xlWorkSheet;

                string filename = @"D:\GIT\toko_emas_NET\template\template2.xls";
                xlWorkBook = MyApp.Workbooks.Open(filename);
                xlWorkSheet = xlWorkBook.Worksheets["Sheet1"];

                ((Range)xlWorkSheet.Range["A2", "E21"]).Clear();

                int nRow = dgvInventory.SelectedRows.Count;
                int iRow = 2;
                for (int i = 0; i < nRow; i++)
                {
                    DataGridViewRow sel_row = dgvInventory.SelectedRows[i];

                    string nama = (string)sel_row.Cells[1].Value + " " + (string)sel_row.Cells[2].Value + " " + (string)sel_row.Cells[3].Value;
                    if(nama.Length > 20)
                        nama = nama.Substring(0, 20);
                    xlWorkSheet.Cells[iRow + i, 1].value = nama;
                    xlWorkSheet.Cells[iRow + i, 2].value = (string)sel_row.Cells[0].Value;
                    xlWorkSheet.Cells[iRow + i, 3].value = "'" + (string)sel_row.Cells[5].Value;
                    xlWorkSheet.Cells[iRow + i, 4].value = "'" + (string)sel_row.Cells[4].Value;
                    xlWorkSheet.Cells[iRow + i, 5].value = (string)sel_row.Cells[6].Value;
                }
                xlWorkBook.Save();
                //xlWorkBook.SaveAs(filename, XlFileFormat.xlWorkbookDefault, Type.Missing, Type.Missing, false, false, XlSaveAsAccessMode.xlNoChange, XlSaveConflictResolution.xlLocalSessionChanges, Type.Missing, Type.Missing);
                xlWorkBook.Close();
                MyApp.Quit();
                this.Cursor = Cursors.Default;

                MessageBox.Show("Successfully update template2.xls! Open barcode file to print!", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Please select 2 or more (even) rows (max 10)!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void DgvInventory_SelectionChanged(object sender, EventArgs e)
        {
            
            nRowSelected = dgvInventory.SelectedRows.Count;

            lblSelectedRows.Text = nRowSelected.ToString();
        }

        private void btnFind_Click(object sender, EventArgs e)
        {
            if(txbFindName.TextLength > 0)
            {
                cbCatItems.SelectedIndex = 0;
                cbSubItems.Enabled = false;
                cbStatus.SelectedIndex = 0;

                itemList = manager.GetAllInventoriesSearch(txbFindName.Text);
                FillDGViewInventory();
            }
            else
            {
                MessageBox.Show("Please insert item name to find!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txbFindName.Text = string.Empty;
            LoadViewInventory();
        }
    }
}
