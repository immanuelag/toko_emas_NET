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
        Dictionary<string, UserClass> userDictionary;

        List<UserClass> userList;
        int data_mode;

        public FormMasterUser()
        {
            InitializeComponent();

            userList = new List<UserClass>();
            userDictionary = new Dictionary<string, UserClass>();

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
                userDictionary.Add(userList[a].username, userList[a]);
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
            btnChange.Enabled = false;
            txbUsername.ReadOnly = false;

            txbUsername.Focus();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            gbUser.Enabled = false;
            data_mode = 0;
            txbUsername.Text = "";
            txbPassword.Text = "";

            btnChange.Enabled = false;
            txbUsername.ReadOnly = false;

            dgvUser.Focus();
        }

        private void btnUserEdit_Click(object sender, EventArgs e)
        {
            if(dgvUser.SelectedRows.Count < 1)
            {
                MessageBox.Show("There are no user selected!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                DataGridViewRow row = dgvUser.SelectedRows[0];

                string username = (string)row.Cells[0].Value;
                UserClass userSelected = null;
                if(userDictionary.TryGetValue(username, out userSelected))
                {
                    data_mode = 2;
                    gbUser.Enabled = true;

                    txbUsername.Text = username;
                    txbUsername.ReadOnly = true;
                    cbUserRole.SelectedIndex = (int)userSelected.role - 1;
                    btnChange.Enabled = true;
                }
            }
        }

        private void btnChange_Click(object sender, EventArgs e)
        {
            if (btnChange.Text == "Change")
            {
                txbPassword.Enabled = true;
                txbPassword.Text = "";
                txbPassword.Focus();

                btnChange.Text = "Undo";
            }
            else
            {
                txbPassword.Enabled = false;
                txbPassword.Text = "";
                btnChange.Text = "Change";
            }
        }

        private void btnUserSave_Click(object sender, EventArgs e)
        {
            if(data_mode == 1)
            {
                UserClass userNew = new UserClass(txbUsername.Text, txbPassword.Text, (cbUserRole.SelectedIndex + 1));

                try
                {
                    if(manager.AddNewUser(userNew))
                    {
                        MessageBox.Show("Successfully add new user!");
                    }
                    else
                    {
                        MessageBox.Show("Failed add new user!");
                    }
                }
                catch(Exception ex)
                {
                    MessageBox.Show("Error add new user : " + ex.Message, "Error");
                }
            }
            else
            {
                if(txbPassword.Text.Length > 0)
                {
                    UserClass userEdited = new UserClass(txbUsername.Text, txbPassword.Text, (cbUserRole.SelectedIndex + 1));
                    userEdited.passcode = UserClass.CreateMD5(txbPassword.Text);

                    try
                    {
                        if(manager.UpdateUser(userEdited))
                        {
                            MessageBox.Show("Successfully update user : " + userEdited.username);
                        }
                        else
                        {
                            MessageBox.Show("Failed update user : " + userEdited.username);
                        }
                    }
                    catch(Exception ex)
                    {
                        MessageBox.Show("Error update user : " + ex.Message);
                    }
                }
                else
                {
                    UserClass userEdited = new UserClass(txbUsername.Text, txbPassword.Text, (cbUserRole.SelectedIndex + 1));
                    try
                    {
                        if(manager.UpdateUserRole(userEdited))
                        {
                            MessageBox.Show("Successfully update user : " + userEdited.username);
                        }
                        else
                        {
                            MessageBox.Show("Failed update user : " + userEdited.username);
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error update user : " + ex.Message);
                    }
                }
            }

            gbUser.Enabled = false;
            data_mode = 0;
            txbUsername.Text = "";
            txbPassword.Text = "";

            btnChange.Enabled = false;
            txbUsername.ReadOnly = false;

            dgvUser.Focus();
        }

        
    }
}
