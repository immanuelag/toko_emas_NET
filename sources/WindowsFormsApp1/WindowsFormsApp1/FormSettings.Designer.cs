namespace WindowsFormsApp1
{
    partial class FormSettings
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txbDBName = new System.Windows.Forms.TextBox();
            this.txbDBUser = new System.Windows.Forms.TextBox();
            this.txbDBPass = new System.Windows.Forms.TextBox();
            this.btnSave = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(19, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(108, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Database Name";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(19, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Database User";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(19, 95);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(131, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "Database Password";
            // 
            // txbDBName
            // 
            this.txbDBName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txbDBName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbDBName.Location = new System.Drawing.Point(171, 19);
            this.txbDBName.MaxLength = 50;
            this.txbDBName.Name = "txbDBName";
            this.txbDBName.Size = new System.Drawing.Size(133, 21);
            this.txbDBName.TabIndex = 3;
            // 
            // txbDBUser
            // 
            this.txbDBUser.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txbDBUser.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbDBUser.Location = new System.Drawing.Point(171, 55);
            this.txbDBUser.MaxLength = 50;
            this.txbDBUser.Name = "txbDBUser";
            this.txbDBUser.Size = new System.Drawing.Size(133, 21);
            this.txbDBUser.TabIndex = 4;
            // 
            // txbDBPass
            // 
            this.txbDBPass.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txbDBPass.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbDBPass.Location = new System.Drawing.Point(171, 93);
            this.txbDBPass.MaxLength = 50;
            this.txbDBPass.Name = "txbDBPass";
            this.txbDBPass.Size = new System.Drawing.Size(133, 21);
            this.txbDBPass.TabIndex = 5;
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(204, 142);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(100, 29);
            this.btnSave.TabIndex = 6;
            this.btnSave.Text = "Save";
            this.btnSave.UseVisualStyleBackColor = true;
            // 
            // FormSettings
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(332, 202);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.txbDBPass);
            this.Controls.Add(this.txbDBUser);
            this.Controls.Add(this.txbDBName);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "FormSettings";
            this.Text = "Settings";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txbDBName;
        private System.Windows.Forms.TextBox txbDBUser;
        private System.Windows.Forms.TextBox txbDBPass;
        private System.Windows.Forms.Button btnSave;
    }
}