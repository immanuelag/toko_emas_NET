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
        MySQLDBManager manager;

        public FormLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (txbUsername.TextLength > 0 && txbPassword.TextLength > 0)
            {
                //LoginMethod1();
                LoginMethod2();
            }
            else
            {
                MessageBox.Show("Username and password can't be empty!");
                txbUsername.Focus();
            }
            
        }

        
        private void LoginMethod2()
        {
            MainForm parent = (MainForm)this.MdiParent;

            try
            {
                UserClass userLogin = manager.GetUserByID(txbUsername.Text);

                if(userLogin != null)
                {
                    string md5pass = UserClass.CreateMD5(txbPassword.Text);

                    if(string.Compare(userLogin.passcode,md5pass,true) == 0)
                    {
                        parent.activeUser = userLogin;
                        parent.bLogin = true;
                        parent.RefreshMenu();
                        this.Close();
                    }
                    else
                    {
                        parent.bLogin = false;
                        MessageBox.Show("Password Incorrect!");
                    }
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error login : " + ex.Message, "Error");
            }
        }

        private void LoginMethod1()
        {
            MainForm parent = (MainForm)this.MdiParent;

            if (txbUsername.Text == "Administrator" && txbPassword.Text == "admin1234")
            {
                parent.activeUser = new UserClass("Administrator", "admin1234", 1);
                parent.bLogin = true;
                parent.RefreshMenu();
                this.Close();
            }
            else if (txbUsername.Text == "Owner" && txbPassword.Text == "owner1234")
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

        private void FormLogin_Load(object sender, EventArgs e)
        {
            MainForm parent = (MainForm)this.MdiParent;
            manager = parent.manDB;
        }
    }
}
