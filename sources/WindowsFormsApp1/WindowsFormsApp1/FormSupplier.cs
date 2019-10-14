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
    public partial class FormSupplier : Form
    {
        public MySQLDBManager manager;
        List<Supplier> suppliersList;
        int data_mode;

        public FormSupplier()
        {
            InitializeComponent();
            suppliersList = new List<Supplier>();
            data_mode = 0;
        }

        private void RefreshSupplier()
        {
            txbID.Text = "";
            txbCode.Text = "";
            txbName.Text = "";
        }

        private void FormSupplier_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            FillDGVSupplier();
            groupBox1.Enabled = false;
        }

        private void FillDGVSupplier()
        {
            if(dgvSupplier.Rows.Count > 0)
            {
                dgvSupplier.Rows.Clear();
            }
            suppliersList = manager.GetAllSupplier();

            for (int i = 0; i < suppliersList.Count; i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvSupplier);

                row.Cells[0].Value = suppliersList[i].id;
                row.Cells[1].Value = suppliersList[i].code;
                row.Cells[2].Value = suppliersList[i].nama;

                //listCat.Add(categories[i].category_id, categories[i].category_name);
                dgvSupplier.Rows.Add(row);
            }
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            groupBox1.Enabled = true;

            txbID.Text = manager.GetNewSupplierID().ToString();
            data_mode = 1;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            RefreshSupplier();
            groupBox1.Enabled = false;
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
            if(dgvSupplier.SelectedRows.Count == 1)
            {
                groupBox1.Enabled = true;
                Supplier sel_sup = manager.GetSupplierByID((int)dgvSupplier.SelectedRows[0].Cells[0].Value);

                txbID.Text = sel_sup.id.ToString();
                txbCode.Text = sel_sup.code;
                txbName.Text = sel_sup.nama;
                data_mode = 2;
            }
            else
            {
                MessageBox.Show("Error : Please select only one row!");
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if(data_mode == 1)
            {
                try
                {
                    Supplier sup = new Supplier(int.Parse(txbID.Text), txbCode.Text, txbName.Text);

                    if(manager.AddNewSupplier(sup))
                    {
                        MessageBox.Show("Successfully added new supplier!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Failed added new supplier!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                catch(Exception ex)
                {
                    MessageBox.Show("Error : " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else if(data_mode == 2)
            {
                try
                {
                    Supplier sup = new Supplier(int.Parse(txbID.Text), txbCode.Text, txbName.Text);
                    if(manager.UpdateSupplier(sup))
                    {
                        MessageBox.Show("Successfully updated new supplier!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    else
                    {
                        MessageBox.Show("Failed updated new supplier!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error : " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            RefreshSupplier();
            FillDGVSupplier();
            groupBox1.Enabled = false;
        }
    }
}
