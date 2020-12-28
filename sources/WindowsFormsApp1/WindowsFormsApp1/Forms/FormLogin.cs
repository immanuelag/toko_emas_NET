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
    public partial class FormLogin : Form
    {
        public FormLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;

            if(txbUsername.Text == "Administrator" && txbPassword.Text == "admin1234")
            {
                parent.activeUser = new UserClass("Administrator", "admin1234", 1);
                parent.bLogin = true;
                parent.RefreshMenu();
                this.Close();
            }
            else if(txbUsername.Text == "Owner" && txbPassword.Text == "owner1234")
            {
                parent.activeUser = new UserClass("Owner", "owner1234", 2);
                parent.bLogin = true;
                parent.RefreshMenu();
                this.Close();
            }
            else if (txbUsername.Text == "employee1" && txbPassword.Text == "employee1")
            {
                parent.activeUser = new UserClass("employee1", "employee1", 3);
                parent.bLogin = false;
                parent.RefreshMenu();
                this.Close();
            }
            else
            {
                MessageBox.Show("Wrong username and password!", "Error Login!", MessageBoxButtons.OK, MessageBoxIcon.Error, MessageBoxDefaultButton.Button1);
                txbPassword.Text = "";
            }
        }
    }
}
