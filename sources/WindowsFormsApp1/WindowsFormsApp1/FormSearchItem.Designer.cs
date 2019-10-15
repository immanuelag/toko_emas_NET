namespace TokoEmasAppNET
{
    partial class FormSearchItem
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
            this.cbNama = new System.Windows.Forms.CheckBox();
            this.cbBerat = new System.Windows.Forms.CheckBox();
            this.txbNama = new System.Windows.Forms.TextBox();
            this.txbMinWeight = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txbMaxWeight = new System.Windows.Forms.TextBox();
            this.cbSubcat = new System.Windows.Forms.CheckBox();
            this.cmbSub = new System.Windows.Forms.ComboBox();
            this.cmbCat = new System.Windows.Forms.ComboBox();
            this.cbCat = new System.Windows.Forms.CheckBox();
            this.cmbCarat = new System.Windows.Forms.ComboBox();
            this.cbCarat = new System.Windows.Forms.CheckBox();
            this.cmbSupplier = new System.Windows.Forms.ComboBox();
            this.cbSupplier = new System.Windows.Forms.CheckBox();
            this.cmbStatus = new System.Windows.Forms.ComboBox();
            this.cbStatus = new System.Windows.Forms.CheckBox();
            this.dgvSearch = new System.Windows.Forms.DataGridView();
            this.btnXcode = new System.Windows.Forms.Button();
            this.btnEdit = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.btnSearch = new System.Windows.Forms.Button();
            this.cbItemID = new System.Windows.Forms.CheckBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.colID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colSubcat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colItemName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colWeight = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCarat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colSupplier = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colStatus = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnReset = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSearch)).BeginInit();
            this.SuspendLayout();
            // 
            // cbNama
            // 
            this.cbNama.AutoSize = true;
            this.cbNama.Location = new System.Drawing.Point(417, 71);
            this.cbNama.Name = "cbNama";
            this.cbNama.Size = new System.Drawing.Size(54, 17);
            this.cbNama.TabIndex = 0;
            this.cbNama.Text = "Name";
            this.cbNama.UseVisualStyleBackColor = true;
            this.cbNama.CheckedChanged += new System.EventHandler(this.cbNama_CheckedChanged);
            // 
            // cbBerat
            // 
            this.cbBerat.AutoSize = true;
            this.cbBerat.Location = new System.Drawing.Point(417, 105);
            this.cbBerat.Name = "cbBerat";
            this.cbBerat.Size = new System.Drawing.Size(60, 17);
            this.cbBerat.TabIndex = 1;
            this.cbBerat.Text = "Weight";
            this.cbBerat.UseVisualStyleBackColor = true;
            this.cbBerat.CheckedChanged += new System.EventHandler(this.cbBerat_CheckedChanged);
            // 
            // txbNama
            // 
            this.txbNama.Location = new System.Drawing.Point(493, 69);
            this.txbNama.Name = "txbNama";
            this.txbNama.Size = new System.Drawing.Size(198, 20);
            this.txbNama.TabIndex = 2;
            // 
            // txbMinWeight
            // 
            this.txbMinWeight.Location = new System.Drawing.Point(520, 103);
            this.txbMinWeight.Name = "txbMinWeight";
            this.txbMinWeight.Size = new System.Drawing.Size(62, 20);
            this.txbMinWeight.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(489, 106);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(24, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Min";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(600, 106);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(27, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Max";
            // 
            // txbMaxWeight
            // 
            this.txbMaxWeight.Location = new System.Drawing.Point(630, 103);
            this.txbMaxWeight.Name = "txbMaxWeight";
            this.txbMaxWeight.Size = new System.Drawing.Size(61, 20);
            this.txbMaxWeight.TabIndex = 5;
            // 
            // cbSubcat
            // 
            this.cbSubcat.AutoSize = true;
            this.cbSubcat.Location = new System.Drawing.Point(112, 71);
            this.cbSubcat.Name = "cbSubcat";
            this.cbSubcat.Size = new System.Drawing.Size(86, 17);
            this.cbSubcat.TabIndex = 7;
            this.cbSubcat.Text = "Subcategory";
            this.cbSubcat.UseVisualStyleBackColor = true;
            this.cbSubcat.CheckedChanged += new System.EventHandler(this.cbSubcat_CheckedChanged);
            // 
            // cmbSub
            // 
            this.cmbSub.FormattingEnabled = true;
            this.cmbSub.Location = new System.Drawing.Point(212, 67);
            this.cmbSub.Name = "cmbSub";
            this.cmbSub.Size = new System.Drawing.Size(121, 21);
            this.cmbSub.TabIndex = 8;
            // 
            // cmbCat
            // 
            this.cmbCat.FormattingEnabled = true;
            this.cmbCat.Location = new System.Drawing.Point(212, 32);
            this.cmbCat.Name = "cmbCat";
            this.cmbCat.Size = new System.Drawing.Size(121, 21);
            this.cmbCat.TabIndex = 10;
            // 
            // cbCat
            // 
            this.cbCat.AutoSize = true;
            this.cbCat.Location = new System.Drawing.Point(112, 36);
            this.cbCat.Name = "cbCat";
            this.cbCat.Size = new System.Drawing.Size(68, 17);
            this.cbCat.TabIndex = 9;
            this.cbCat.Text = "Category";
            this.cbCat.UseVisualStyleBackColor = true;
            this.cbCat.CheckedChanged += new System.EventHandler(this.cbCat_CheckedChanged);
            // 
            // cmbCarat
            // 
            this.cmbCarat.FormattingEnabled = true;
            this.cmbCarat.Location = new System.Drawing.Point(212, 137);
            this.cmbCarat.Name = "cmbCarat";
            this.cmbCarat.Size = new System.Drawing.Size(74, 21);
            this.cmbCarat.TabIndex = 12;
            // 
            // cbCarat
            // 
            this.cbCarat.AutoSize = true;
            this.cbCarat.Location = new System.Drawing.Point(112, 139);
            this.cbCarat.Name = "cbCarat";
            this.cbCarat.Size = new System.Drawing.Size(51, 17);
            this.cbCarat.TabIndex = 11;
            this.cbCarat.Text = "Carat";
            this.cbCarat.UseVisualStyleBackColor = true;
            this.cbCarat.CheckedChanged += new System.EventHandler(this.cbCarat_CheckedChanged);
            // 
            // cmbSupplier
            // 
            this.cmbSupplier.FormattingEnabled = true;
            this.cmbSupplier.Location = new System.Drawing.Point(212, 101);
            this.cmbSupplier.Name = "cmbSupplier";
            this.cmbSupplier.Size = new System.Drawing.Size(74, 21);
            this.cmbSupplier.TabIndex = 14;
            // 
            // cbSupplier
            // 
            this.cbSupplier.AutoSize = true;
            this.cbSupplier.Location = new System.Drawing.Point(112, 105);
            this.cbSupplier.Name = "cbSupplier";
            this.cbSupplier.Size = new System.Drawing.Size(64, 17);
            this.cbSupplier.TabIndex = 13;
            this.cbSupplier.Text = "Supplier";
            this.cbSupplier.UseVisualStyleBackColor = true;
            this.cbSupplier.CheckedChanged += new System.EventHandler(this.cbSupplier_CheckedChanged);
            // 
            // cmbStatus
            // 
            this.cmbStatus.FormattingEnabled = true;
            this.cmbStatus.Location = new System.Drawing.Point(212, 169);
            this.cmbStatus.Name = "cmbStatus";
            this.cmbStatus.Size = new System.Drawing.Size(121, 21);
            this.cmbStatus.TabIndex = 16;
            // 
            // cbStatus
            // 
            this.cbStatus.AutoSize = true;
            this.cbStatus.Location = new System.Drawing.Point(112, 172);
            this.cbStatus.Name = "cbStatus";
            this.cbStatus.Size = new System.Drawing.Size(56, 17);
            this.cbStatus.TabIndex = 15;
            this.cbStatus.Text = "Status";
            this.cbStatus.UseVisualStyleBackColor = true;
            this.cbStatus.CheckedChanged += new System.EventHandler(this.cbStatus_CheckedChanged);
            // 
            // dgvSearch
            // 
            this.dgvSearch.AllowUserToAddRows = false;
            this.dgvSearch.AllowUserToDeleteRows = false;
            this.dgvSearch.AllowUserToOrderColumns = true;
            this.dgvSearch.AllowUserToResizeColumns = false;
            this.dgvSearch.AllowUserToResizeRows = false;
            this.dgvSearch.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSearch.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colID,
            this.colCat,
            this.colSubcat,
            this.colItemName,
            this.colWeight,
            this.colCarat,
            this.colSupplier,
            this.colStatus});
            this.dgvSearch.Location = new System.Drawing.Point(28, 209);
            this.dgvSearch.Name = "dgvSearch";
            this.dgvSearch.ReadOnly = true;
            this.dgvSearch.Size = new System.Drawing.Size(700, 204);
            this.dgvSearch.TabIndex = 17;
            // 
            // btnXcode
            // 
            this.btnXcode.Location = new System.Drawing.Point(29, 427);
            this.btnXcode.Name = "btnXcode";
            this.btnXcode.Size = new System.Drawing.Size(169, 23);
            this.btnXcode.TabIndex = 18;
            this.btnXcode.Text = "Generate XLS Barcode";
            this.btnXcode.UseVisualStyleBackColor = true;
            // 
            // btnEdit
            // 
            this.btnEdit.Location = new System.Drawing.Point(551, 427);
            this.btnEdit.Name = "btnEdit";
            this.btnEdit.Size = new System.Drawing.Size(75, 23);
            this.btnEdit.TabIndex = 19;
            this.btnEdit.Text = "Edit";
            this.btnEdit.UseVisualStyleBackColor = true;
            // 
            // btnClose
            // 
            this.btnClose.Location = new System.Drawing.Point(650, 427);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 20;
            this.btnClose.Text = "Close";
            this.btnClose.UseVisualStyleBackColor = true;
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(589, 155);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(101, 34);
            this.btnSearch.TabIndex = 21;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // cbItemID
            // 
            this.cbItemID.AutoSize = true;
            this.cbItemID.Location = new System.Drawing.Point(417, 37);
            this.cbItemID.Name = "cbItemID";
            this.cbItemID.Size = new System.Drawing.Size(60, 17);
            this.cbItemID.TabIndex = 22;
            this.cbItemID.Text = "Item ID";
            this.cbItemID.UseVisualStyleBackColor = true;
            this.cbItemID.CheckedChanged += new System.EventHandler(this.cbItemID_CheckedChanged);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(495, 35);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 23;
            // 
            // colID
            // 
            this.colID.HeaderText = "Item ID";
            this.colID.MinimumWidth = 20;
            this.colID.Name = "colID";
            this.colID.ReadOnly = true;
            this.colID.Width = 70;
            // 
            // colCat
            // 
            this.colCat.HeaderText = "Category";
            this.colCat.MinimumWidth = 20;
            this.colCat.Name = "colCat";
            this.colCat.ReadOnly = true;
            this.colCat.Width = 70;
            // 
            // colSubcat
            // 
            this.colSubcat.HeaderText = "Subcategory";
            this.colSubcat.MinimumWidth = 30;
            this.colSubcat.Name = "colSubcat";
            this.colSubcat.ReadOnly = true;
            this.colSubcat.Width = 90;
            // 
            // colItemName
            // 
            this.colItemName.HeaderText = "Item Name";
            this.colItemName.MinimumWidth = 50;
            this.colItemName.Name = "colItemName";
            this.colItemName.ReadOnly = true;
            this.colItemName.Width = 160;
            // 
            // colWeight
            // 
            this.colWeight.HeaderText = "Weight";
            this.colWeight.MinimumWidth = 40;
            this.colWeight.Name = "colWeight";
            this.colWeight.ReadOnly = true;
            this.colWeight.Width = 70;
            // 
            // colCarat
            // 
            this.colCarat.HeaderText = "Carat";
            this.colCarat.MinimumWidth = 40;
            this.colCarat.Name = "colCarat";
            this.colCarat.ReadOnly = true;
            this.colCarat.Width = 50;
            // 
            // colSupplier
            // 
            this.colSupplier.HeaderText = "Supplier";
            this.colSupplier.MinimumWidth = 40;
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.ReadOnly = true;
            this.colSupplier.Width = 60;
            // 
            // colStatus
            // 
            this.colStatus.HeaderText = "Status";
            this.colStatus.MinimumWidth = 40;
            this.colStatus.Name = "colStatus";
            this.colStatus.ReadOnly = true;
            this.colStatus.Width = 80;
            // 
            // btnReset
            // 
            this.btnReset.Location = new System.Drawing.Point(467, 155);
            this.btnReset.Name = "btnReset";
            this.btnReset.Size = new System.Drawing.Size(101, 34);
            this.btnReset.TabIndex = 24;
            this.btnReset.Text = "Reset";
            this.btnReset.UseVisualStyleBackColor = true;
            // 
            // FormSearchItem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(757, 473);
            this.Controls.Add(this.btnReset);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.cbItemID);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnEdit);
            this.Controls.Add(this.btnXcode);
            this.Controls.Add(this.dgvSearch);
            this.Controls.Add(this.cmbStatus);
            this.Controls.Add(this.cbStatus);
            this.Controls.Add(this.cmbSupplier);
            this.Controls.Add(this.cbSupplier);
            this.Controls.Add(this.cmbCarat);
            this.Controls.Add(this.cbCarat);
            this.Controls.Add(this.cmbCat);
            this.Controls.Add(this.cbCat);
            this.Controls.Add(this.cmbSub);
            this.Controls.Add(this.cbSubcat);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txbMaxWeight);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txbMinWeight);
            this.Controls.Add(this.txbNama);
            this.Controls.Add(this.cbBerat);
            this.Controls.Add(this.cbNama);
            this.Name = "FormSearchItem";
            this.Text = "Search Item";
            this.Load += new System.EventHandler(this.FormSearchItem_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvSearch)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox cbNama;
        private System.Windows.Forms.CheckBox cbBerat;
        private System.Windows.Forms.TextBox txbNama;
        private System.Windows.Forms.TextBox txbMinWeight;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txbMaxWeight;
        private System.Windows.Forms.CheckBox cbSubcat;
        private System.Windows.Forms.ComboBox cmbSub;
        private System.Windows.Forms.ComboBox cmbCat;
        private System.Windows.Forms.CheckBox cbCat;
        private System.Windows.Forms.ComboBox cmbCarat;
        private System.Windows.Forms.CheckBox cbCarat;
        private System.Windows.Forms.ComboBox cmbSupplier;
        private System.Windows.Forms.CheckBox cbSupplier;
        private System.Windows.Forms.ComboBox cmbStatus;
        private System.Windows.Forms.CheckBox cbStatus;
        private System.Windows.Forms.DataGridView dgvSearch;
        private System.Windows.Forms.Button btnXcode;
        private System.Windows.Forms.Button btnEdit;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.CheckBox cbItemID;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.DataGridViewTextBoxColumn colID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCat;
        private System.Windows.Forms.DataGridViewTextBoxColumn colSubcat;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemName;
        private System.Windows.Forms.DataGridViewTextBoxColumn colWeight;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCarat;
        private System.Windows.Forms.DataGridViewTextBoxColumn colSupplier;
        private System.Windows.Forms.DataGridViewTextBoxColumn colStatus;
        private System.Windows.Forms.Button btnReset;
    }
}