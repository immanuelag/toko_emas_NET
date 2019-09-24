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
    public partial class frmMasterCarat : Form
    {
        public MySQLDBManager manager;
        public List<Carat> carats;
        public int data_mode;

        public frmMasterCarat()
        {
            InitializeComponent();
            carats = new List<Carat>();
            gbCarat.Enabled = false;
            data_mode = 0; //nothing
        }

        private void FrmMasterCarat_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            LoadViewCarats();
        }

        private void LoadViewCarats()
        {
            if (dgvCarat.Rows.Count > 0)
            {
                dgvCarat.Rows.Clear();
            }

            carats = manager.GetAllCarat();

            for (int i = 0; i < carats.Count; i++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvCarat);

                row.Cells[0].Value = carats[i].id;
                row.Cells[1].Value = carats[i].value;

                //listCat.Add(categories[i].category_id, categories[i].category_name);
                dgvCarat.Rows.Add(row);
            }

        }

        private void ClearGBCarat()
        {
            txbCarID.Text = "";
            txbCarName.Text = "";
            gbCarat.Enabled = false;
            data_mode = 0;
        }

        private void BtnCarAdd_Click(object sender, EventArgs e)
        {
            gbCarat.Enabled = true;
            txbCarID.Focus();
            data_mode = 1;//Add mode
        }

        private void BtnCarEdit_Click(object sender, EventArgs e)
        {
            if (dgvCarat.SelectedRows.Count > 0)
            {
                gbCarat.Enabled = true;
                DataGridViewRow row = dgvCarat.SelectedRows[0];

                txbCarID.Text = (string)row.Cells[0].Value;
                txbCarName.Text = (string)row.Cells[1].Value;
                data_mode = 2; //Edit mode
            }
            else
            {
                MessageBox.Show("Please select carat item first!");
            }
        }

        private void BtnCarCancel_Click(object sender, EventArgs e)
        {
            ClearGBCarat();
        }

        private void BtnCarSave_Click(object sender, EventArgs e)
        {
            if (txbCarID.TextLength > 0 & txbCarName.TextLength > 0)
            {
                Carat new_cat = new Carat(int.Parse(txbCarID.Text), txbCarName.Text);
                try
                {
                    if (data_mode == 1)
                    {
                        if (manager.AddNewCarat(new_cat))
                        {
                            MessageBox.Show("Add new carat succeed!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                    else if (data_mode == 2)
                    {
                        if (manager.UpdateCarat(new_cat))
                        {
                            MessageBox.Show("Update carat succeed!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }

                LoadViewCarats();
                ClearGBCarat();
            }
            else
            {
                MessageBox.Show("Carat ID and Value can't be empty!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                txbCarID.Focus();
            }
        }
    }
}
