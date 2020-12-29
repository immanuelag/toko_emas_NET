namespace TokoEmasAppNET
{
    partial class FormMasterUser
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgvUser = new System.Windows.Forms.DataGridView();
            this.colUsername = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colRole = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.btnUserAdd = new System.Windows.Forms.Button();
            this.btnUserEdit = new System.Windows.Forms.Button();
            this.gbUser = new System.Windows.Forms.GroupBox();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnUserSave = new System.Windows.Forms.Button();
            this.cbUserRole = new System.Windows.Forms.ComboBox();
            this.txbPassword = new System.Windows.Forms.TextBox();
            this.txbUsername = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnChange = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUser)).BeginInit();
            this.gbUser.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvUser
            // 
            this.dgvUser.AllowUserToAddRows = false;
            this.dgvUser.AllowUserToDeleteRows = false;
            this.dgvUser.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvUser.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colUsername,
            this.colRole});
            this.dgvUser.Location = new System.Drawing.Point(23, 61);
            this.dgvUser.MultiSelect = false;
            this.dgvUser.Name = "dgvUser";
            this.dgvUser.ReadOnly = true;
            this.dgvUser.ShowEditingIcon = false;
            this.dgvUser.Size = new System.Drawing.Size(456, 160);
            this.dgvUser.TabIndex = 0;
            // 
            // colUsername
            // 
            this.colUsername.HeaderText = "Username";
            this.colUsername.Name = "colUsername";
            this.colUsername.ReadOnly = true;
            this.colUsername.Width = 200;
            // 
            // colRole
            // 
            this.colRole.HeaderText = "User Role";
            this.colRole.Name = "colRole";
            this.colRole.ReadOnly = true;
            this.colRole.Width = 150;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(20, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(90, 18);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tabel User";
            // 
            // btnUserAdd
            // 
            this.btnUserAdd.Location = new System.Drawing.Point(281, 238);
            this.btnUserAdd.Name = "btnUserAdd";
            this.btnUserAdd.Size = new System.Drawing.Size(75, 23);
            this.btnUserAdd.TabIndex = 2;
            this.btnUserAdd.Text = "Add";
            this.btnUserAdd.UseVisualStyleBackColor = true;
            this.btnUserAdd.Click += new System.EventHandler(this.btnUserAdd_Click);
            // 
            // btnUserEdit
            // 
            this.btnUserEdit.Location = new System.Drawing.Point(387, 238);
            this.btnUserEdit.Name = "btnUserEdit";
            this.btnUserEdit.Size = new System.Drawing.Size(75, 23);
            this.btnUserEdit.TabIndex = 3;
            this.btnUserEdit.Text = "Edit";
            this.btnUserEdit.UseVisualStyleBackColor = true;
            this.btnUserEdit.Click += new System.EventHandler(this.btnUserEdit_Click);
            // 
            // gbUser
            // 
            this.gbUser.Controls.Add(this.btnChange);
            this.gbUser.Controls.Add(this.btnCancel);
            this.gbUser.Controls.Add(this.btnUserSave);
            this.gbUser.Controls.Add(this.cbUserRole);
            this.gbUser.Controls.Add(this.txbPassword);
            this.gbUser.Controls.Add(this.txbUsername);
            this.gbUser.Controls.Add(this.label4);
            this.gbUser.Controls.Add(this.label3);
            this.gbUser.Controls.Add(this.label2);
            this.gbUser.Enabled = false;
            this.gbUser.Location = new System.Drawing.Point(23, 280);
            this.gbUser.Name = "gbUser";
            this.gbUser.Size = new System.Drawing.Size(456, 188);
            this.gbUser.TabIndex = 4;
            this.gbUser.TabStop = false;
            this.gbUser.Text = "User Actions";
            // 
            // btnCancel
            // 
            this.btnCancel.Location = new System.Drawing.Point(258, 146);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 7;
            this.btnCancel.Text = "Cancel";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnUserSave
            // 
            this.btnUserSave.Location = new System.Drawing.Point(364, 146);
            this.btnUserSave.Name = "btnUserSave";
            this.btnUserSave.Size = new System.Drawing.Size(75, 23);
            this.btnUserSave.TabIndex = 6;
            this.btnUserSave.Text = "Save";
            this.btnUserSave.UseVisualStyleBackColor = true;
            this.btnUserSave.Click += new System.EventHandler(this.btnUserSave_Click);
            // 
            // cbUserRole
            // 
            this.cbUserRole.FormattingEnabled = true;
            this.cbUserRole.Items.AddRange(new object[] {
            "Administrator",
            "Owner",
            "Employee"});
            this.cbUserRole.Location = new System.Drawing.Point(165, 97);
            this.cbUserRole.Name = "cbUserRole";
            this.cbUserRole.Size = new System.Drawing.Size(131, 21);
            this.cbUserRole.TabIndex = 5;
            // 
            // txbPassword
            // 
            this.txbPassword.Location = new System.Drawing.Point(165, 63);
            this.txbPassword.Name = "txbPassword";
            this.txbPassword.PasswordChar = '*';
            this.txbPassword.Size = new System.Drawing.Size(131, 20);
            this.txbPassword.TabIndex = 4;
            // 
            // txbUsername
            // 
            this.txbUsername.Location = new System.Drawing.Point(165, 28);
            this.txbUsername.Name = "txbUsername";
            this.txbUsername.Size = new System.Drawing.Size(131, 20);
            this.txbUsername.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(42, 100);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(29, 13);
            this.label4.TabIndex = 2;
            this.label4.Text = "Role";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(42, 63);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "Password";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(42, 31);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(55, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Username";
            // 
            // btnChange
            // 
            this.btnChange.Location = new System.Drawing.Point(335, 61);
            this.btnChange.Name = "btnChange";
            this.btnChange.Size = new System.Drawing.Size(75, 23);
            this.btnChange.TabIndex = 8;
            this.btnChange.Text = "Change";
            this.btnChange.UseVisualStyleBackColor = true;
            this.btnChange.Click += new System.EventHandler(this.btnChange_Click);
            // 
            // FormMasterUser
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(500, 480);
            this.Controls.Add(this.gbUser);
            this.Controls.Add(this.btnUserEdit);
            this.Controls.Add(this.btnUserAdd);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgvUser);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.Name = "FormMasterUser";
            this.Text = "Master User";
            this.Load += new System.EventHandler(this.FormMasterUser_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvUser)).EndInit();
            this.gbUser.ResumeLayout(false);
            this.gbUser.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvUser;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnUserAdd;
        private System.Windows.Forms.Button btnUserEdit;
        private System.Windows.Forms.GroupBox gbUser;
        private System.Windows.Forms.ComboBox cbUserRole;
        private System.Windows.Forms.TextBox txbUsername;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnUserSave;
        private System.Windows.Forms.DataGridViewTextBoxColumn colUsername;
        private System.Windows.Forms.DataGridViewTextBoxColumn colRole;
        private System.Windows.Forms.TextBox txbPassword;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnChange;
    }
}