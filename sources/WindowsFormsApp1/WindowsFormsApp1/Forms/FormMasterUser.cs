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
    public partial class FormMasterUser : Form
    {
        MySQLDBManager manager;
        List<UserClass> userList;
        int data_mode;

        public FormMasterUser()
        {
            InitializeComponent();

            userList = new List<UserClass>();
            data_mode = 0;
        }

        private void FillDGViewer()
        {
            if(dgvUser.Rows.Count > 0)
            {
                dgvUser.Rows.Clear();
            }

            userList = manager.GetAllUser();

            for(int a=0;a<userList.Count;a++)
            {
                DataGridViewRow row = new DataGridViewRow();
                row.CreateCells(dgvUser);

                row.Cells[0].Value = userList[a].username;
                row.Cells[1].Value = userList[a].GetRole();

                dgvUser.Rows.Add(row);
            }
        }

        private void FormMasterUser_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;

            FillDGViewer();
        }

        private void btnUserAdd_Click(object sender, EventArgs e)
        {
            data_mode = 1;
            gbUser.Enabled = true;
            txbUsername.Focus();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            gbUser.Enabled = false;
            data_mode = 0;
            txbUsername.Text = "";
            txbPassword.Text = "";
            
            dgvUser.Focus();
        }
    }
}
