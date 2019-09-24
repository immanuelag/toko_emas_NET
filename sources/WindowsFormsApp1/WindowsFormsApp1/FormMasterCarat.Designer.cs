namespace TokoEmasAppNET
{
    partial class frmMasterCarat
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
            this.gbCarat = new System.Windows.Forms.GroupBox();
            this.txbCarID = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnCarCancel = new System.Windows.Forms.Button();
            this.btnCarSave = new System.Windows.Forms.Button();
            this.txbCarName = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.btnCarAdd = new System.Windows.Forms.Button();
            this.btnCarEdit = new System.Windows.Forms.Button();
            this.btnCarDel = new System.Windows.Forms.Button();
            this.dgvCarat = new System.Windows.Forms.DataGridView();
            this.colCarID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCarValue = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.gbCarat.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCarat)).BeginInit();
            this.SuspendLayout();
            // 
            // gbCarat
            // 
            this.gbCarat.Controls.Add(this.txbCarID);
            this.gbCarat.Controls.Add(this.label6);
            this.gbCarat.Controls.Add(this.btnCarCancel);
            this.gbCarat.Controls.Add(this.btnCarSave);
            this.gbCarat.Controls.Add(this.txbCarName);
            this.gbCarat.Controls.Add(this.label3);
            this.gbCarat.Location = new System.Drawing.Point(31, 274);
            this.gbCarat.Name = "gbCarat";
            this.gbCarat.Size = new System.Drawing.Size(265, 153);
            this.gbCarat.TabIndex = 18;
            this.gbCarat.TabStop = false;
            this.gbCarat.Text = "Carat";
            // 
            // txbCarID
            // 
            this.txbCarID.Location = new System.Drawing.Point(118, 38);
            this.txbCarID.MaxLength = 1;
            this.txbCarID.Name = "txbCarID";
            this.txbCarID.Size = new System.Drawing.Size(67, 20);
            this.txbCarID.TabIndex = 5;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(23, 41);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(46, 13);
            this.label6.TabIndex = 4;
            this.label6.Text = "Carat ID";
            // 
            // btnCarCancel
            // 
            this.btnCarCancel.Location = new System.Drawing.Point(95, 109);
            this.btnCarCancel.Name = "btnCarCancel";
            this.btnCarCancel.Size = new System.Drawing.Size(62, 23);
            this.btnCarCancel.TabIndex = 3;
            this.btnCarCancel.Text = "Cancel";
            this.btnCarCancel.UseVisualStyleBackColor = true;
            this.btnCarCancel.Click += new System.EventHandler(this.BtnCarCancel_Click);
            // 
            // btnCarSave
            // 
            this.btnCarSave.Location = new System.Drawing.Point(170, 109);
            this.btnCarSave.Name = "btnCarSave";
            this.btnCarSave.Size = new System.Drawing.Size(62, 23);
            this.btnCarSave.TabIndex = 2;
            this.btnCarSave.Text = "Save";
            this.btnCarSave.UseVisualStyleBackColor = true;
            this.btnCarSave.Click += new System.EventHandler(this.BtnCarSave_Click);
            // 
            // txbCarName
            // 
            this.txbCarName.Location = new System.Drawing.Point(118, 68);
            this.txbCarName.MaxLength = 20;
            this.txbCarName.Name = "txbCarName";
            this.txbCarName.Size = new System.Drawing.Size(67, 20);
            this.txbCarName.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(23, 71);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(62, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Carat Value";
            // 
            // btnCarAdd
            // 
            this.btnCarAdd.Location = new System.Drawing.Point(123, 233);
            this.btnCarAdd.Name = "btnCarAdd";
            this.btnCarAdd.Size = new System.Drawing.Size(54, 23);
            this.btnCarAdd.TabIndex = 17;
            this.btnCarAdd.Text = "Add";
            this.btnCarAdd.UseVisualStyleBackColor = true;
            this.btnCarAdd.Click += new System.EventHandler(this.BtnCarAdd_Click);
            // 
            // btnCarEdit
            // 
            this.btnCarEdit.Location = new System.Drawing.Point(183, 233);
            this.btnCarEdit.Name = "btnCarEdit";
            this.btnCarEdit.Size = new System.Drawing.Size(54, 23);
            this.btnCarEdit.TabIndex = 16;
            this.btnCarEdit.Text = "Edit";
            this.btnCarEdit.UseVisualStyleBackColor = true;
            this.btnCarEdit.Click += new System.EventHandler(this.BtnCarEdit_Click);
            // 
            // btnCarDel
            // 
            this.btnCarDel.Location = new System.Drawing.Point(243, 233);
            this.btnCarDel.Name = "btnCarDel";
            this.btnCarDel.Size = new System.Drawing.Size(54, 23);
            this.btnCarDel.TabIndex = 15;
            this.btnCarDel.Text = "Delete";
            this.btnCarDel.UseVisualStyleBackColor = true;
            // 
            // dgvCarat
            // 
            this.dgvCarat.AllowUserToAddRows = false;
            this.dgvCarat.AllowUserToDeleteRows = false;
            this.dgvCarat.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.EnableWithoutHeaderText;
            this.dgvCarat.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCarat.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colCarID,
            this.colCarValue});
            this.dgvCarat.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgvCarat.Location = new System.Drawing.Point(31, 66);
            this.dgvCarat.MultiSelect = false;
            this.dgvCarat.Name = "dgvCarat";
            this.dgvCarat.ReadOnly = true;
            this.dgvCarat.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvCarat.Size = new System.Drawing.Size(265, 150);
            this.dgvCarat.TabIndex = 14;
            // 
            // colCarID
            // 
            this.colCarID.HeaderText = "ID";
            this.colCarID.MinimumWidth = 50;
            this.colCarID.Name = "colCarID";
            this.colCarID.ReadOnly = true;
            this.colCarID.Width = 60;
            // 
            // colCarValue
            // 
            this.colCarValue.HeaderText = "Carat Value";
            this.colCarValue.MinimumWidth = 100;
            this.colCarValue.Name = "colCarValue";
            this.colCarValue.ReadOnly = true;
            this.colCarValue.Width = 160;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(28, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 18);
            this.label1.TabIndex = 13;
            this.label1.Text = "Tabel Carat";
            // 
            // frmMasterCarat
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(335, 450);
            this.Controls.Add(this.gbCarat);
            this.Controls.Add(this.btnCarAdd);
            this.Controls.Add(this.btnCarEdit);
            this.Controls.Add(this.btnCarDel);
            this.Controls.Add(this.dgvCarat);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "frmMasterCarat";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "Master Carat";
            this.Load += new System.EventHandler(this.FrmMasterCarat_Load);
            this.gbCarat.ResumeLayout(false);
            this.gbCarat.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCarat)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gbCarat;
        private System.Windows.Forms.TextBox txbCarID;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnCarCancel;
        private System.Windows.Forms.Button btnCarSave;
        private System.Windows.Forms.TextBox txbCarName;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnCarAdd;
        private System.Windows.Forms.Button btnCarEdit;
        private System.Windows.Forms.Button btnCarDel;
        private System.Windows.Forms.DataGridView dgvCarat;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCarID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCarValue;
    }
}