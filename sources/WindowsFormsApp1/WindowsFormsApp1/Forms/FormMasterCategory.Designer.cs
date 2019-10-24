namespace TokoEmasAppNET
{
    partial class FormMasterCategory
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
            this.dgvCategory = new System.Windows.Forms.DataGridView();
            this.colCatID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCatName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label2 = new System.Windows.Forms.Label();
            this.dgvSubcat = new System.Windows.Forms.DataGridView();
            this.colSubID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colSubCatName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colSubCat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnCatDel = new System.Windows.Forms.Button();
            this.btnCatEdit = new System.Windows.Forms.Button();
            this.btnCatAdd = new System.Windows.Forms.Button();
            this.btnSubAdd = new System.Windows.Forms.Button();
            this.btnSubEdit = new System.Windows.Forms.Button();
            this.btnSubDel = new System.Windows.Forms.Button();
            this.gbCategory = new System.Windows.Forms.GroupBox();
            this.txbCatID = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnCatCancel = new System.Windows.Forms.Button();
            this.btnCatSave = new System.Windows.Forms.Button();
            this.txbCatName = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.gbSubCat = new System.Windows.Forms.GroupBox();
            this.txbSubID = new System.Windows.Forms.TextBox();
            this.btnSubCancel = new System.Windows.Forms.Button();
            this.btnSubSave = new System.Windows.Forms.Button();
            this.txbSubName = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.cbCatName = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCategory)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSubcat)).BeginInit();
            this.gbCategory.SuspendLayout();
            this.gbSubCat.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(23, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(122, 18);
            this.label1.TabIndex = 2;
            this.label1.Text = "Tabel Category";
            // 
            // dgvCategory
            // 
            this.dgvCategory.AllowUserToAddRows = false;
            this.dgvCategory.AllowUserToDeleteRows = false;
            this.dgvCategory.ClipboardCopyMode = System.Windows.Forms.DataGridViewClipboardCopyMode.EnableWithoutHeaderText;
            this.dgvCategory.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCategory.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colCatID,
            this.colCatName});
            this.dgvCategory.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgvCategory.Location = new System.Drawing.Point(26, 65);
            this.dgvCategory.MultiSelect = false;
            this.dgvCategory.Name = "dgvCategory";
            this.dgvCategory.ReadOnly = true;
            this.dgvCategory.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvCategory.Size = new System.Drawing.Size(265, 150);
            this.dgvCategory.TabIndex = 1;
            // 
            // colCatID
            // 
            this.colCatID.HeaderText = "ID";
            this.colCatID.MinimumWidth = 50;
            this.colCatID.Name = "colCatID";
            this.colCatID.ReadOnly = true;
            this.colCatID.Width = 60;
            // 
            // colCatName
            // 
            this.colCatName.HeaderText = "Category Name";
            this.colCatName.MinimumWidth = 100;
            this.colCatName.Name = "colCatName";
            this.colCatName.ReadOnly = true;
            this.colCatName.Width = 160;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(363, 23);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(156, 18);
            this.label2.TabIndex = 4;
            this.label2.Text = "Tabel Sub Category";
            // 
            // dgvSubcat
            // 
            this.dgvSubcat.AllowUserToAddRows = false;
            this.dgvSubcat.AllowUserToDeleteRows = false;
            this.dgvSubcat.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSubcat.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colSubID,
            this.colSubCatName,
            this.colSubCat});
            this.dgvSubcat.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgvSubcat.Location = new System.Drawing.Point(365, 65);
            this.dgvSubcat.MultiSelect = false;
            this.dgvSubcat.Name = "dgvSubcat";
            this.dgvSubcat.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvSubcat.Size = new System.Drawing.Size(403, 150);
            this.dgvSubcat.TabIndex = 5;
            // 
            // colSubID
            // 
            this.colSubID.HeaderText = "ID";
            this.colSubID.MinimumWidth = 30;
            this.colSubID.Name = "colSubID";
            this.colSubID.Width = 60;
            // 
            // colSubCatName
            // 
            this.colSubCatName.HeaderText = "Category";
            this.colSubCatName.MinimumWidth = 60;
            this.colSubCatName.Name = "colSubCatName";
            // 
            // colSubCat
            // 
            this.colSubCat.HeaderText = "Subcategory Name";
            this.colSubCat.MinimumWidth = 160;
            this.colSubCat.Name = "colSubCat";
            this.colSubCat.Width = 200;
            // 
            // btnCatDel
            // 
            this.btnCatDel.Location = new System.Drawing.Point(238, 232);
            this.btnCatDel.Name = "btnCatDel";
            this.btnCatDel.Size = new System.Drawing.Size(54, 23);
            this.btnCatDel.TabIndex = 6;
            this.btnCatDel.Text = "Delete";
            this.btnCatDel.UseVisualStyleBackColor = true;
            this.btnCatDel.Click += new System.EventHandler(this.BtnCatDel_Click);
            // 
            // btnCatEdit
            // 
            this.btnCatEdit.Location = new System.Drawing.Point(178, 232);
            this.btnCatEdit.Name = "btnCatEdit";
            this.btnCatEdit.Size = new System.Drawing.Size(54, 23);
            this.btnCatEdit.TabIndex = 3;
            this.btnCatEdit.Text = "Edit";
            this.btnCatEdit.UseVisualStyleBackColor = true;
            this.btnCatEdit.Click += new System.EventHandler(this.BtnCatEdit_Click);
            // 
            // btnCatAdd
            // 
            this.btnCatAdd.Location = new System.Drawing.Point(118, 232);
            this.btnCatAdd.Name = "btnCatAdd";
            this.btnCatAdd.Size = new System.Drawing.Size(54, 23);
            this.btnCatAdd.TabIndex = 2;
            this.btnCatAdd.Text = "Add";
            this.btnCatAdd.UseVisualStyleBackColor = true;
            this.btnCatAdd.Click += new System.EventHandler(this.BtnCatAdd_Click);
            // 
            // btnSubAdd
            // 
            this.btnSubAdd.Location = new System.Drawing.Point(594, 232);
            this.btnSubAdd.Name = "btnSubAdd";
            this.btnSubAdd.Size = new System.Drawing.Size(54, 23);
            this.btnSubAdd.TabIndex = 11;
            this.btnSubAdd.Text = "Add";
            this.btnSubAdd.UseVisualStyleBackColor = true;
            this.btnSubAdd.Click += new System.EventHandler(this.BtnSubAdd_Click);
            // 
            // btnSubEdit
            // 
            this.btnSubEdit.Location = new System.Drawing.Point(654, 232);
            this.btnSubEdit.Name = "btnSubEdit";
            this.btnSubEdit.Size = new System.Drawing.Size(54, 23);
            this.btnSubEdit.TabIndex = 10;
            this.btnSubEdit.Text = "Edit";
            this.btnSubEdit.UseVisualStyleBackColor = true;
            this.btnSubEdit.Click += new System.EventHandler(this.BtnSubEdit_Click);
            // 
            // btnSubDel
            // 
            this.btnSubDel.Location = new System.Drawing.Point(714, 232);
            this.btnSubDel.Name = "btnSubDel";
            this.btnSubDel.Size = new System.Drawing.Size(54, 23);
            this.btnSubDel.TabIndex = 9;
            this.btnSubDel.Text = "Delete";
            this.btnSubDel.UseVisualStyleBackColor = true;
            this.btnSubDel.Click += new System.EventHandler(this.BtnSubDel_Click);
            // 
            // gbCategory
            // 
            this.gbCategory.Controls.Add(this.txbCatID);
            this.gbCategory.Controls.Add(this.label6);
            this.gbCategory.Controls.Add(this.btnCatCancel);
            this.gbCategory.Controls.Add(this.btnCatSave);
            this.gbCategory.Controls.Add(this.txbCatName);
            this.gbCategory.Controls.Add(this.label3);
            this.gbCategory.Location = new System.Drawing.Point(26, 273);
            this.gbCategory.Name = "gbCategory";
            this.gbCategory.Size = new System.Drawing.Size(265, 153);
            this.gbCategory.TabIndex = 12;
            this.gbCategory.TabStop = false;
            this.gbCategory.Text = "Category";
            // 
            // txbCatID
            // 
            this.txbCatID.Location = new System.Drawing.Point(118, 38);
            this.txbCatID.MaxLength = 1;
            this.txbCatID.Name = "txbCatID";
            this.txbCatID.Size = new System.Drawing.Size(67, 20);
            this.txbCatID.TabIndex = 5;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(23, 41);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(63, 13);
            this.label6.TabIndex = 4;
            this.label6.Text = "Category ID";
            // 
            // btnCatCancel
            // 
            this.btnCatCancel.Location = new System.Drawing.Point(95, 109);
            this.btnCatCancel.Name = "btnCatCancel";
            this.btnCatCancel.Size = new System.Drawing.Size(62, 23);
            this.btnCatCancel.TabIndex = 3;
            this.btnCatCancel.Text = "Cancel";
            this.btnCatCancel.UseVisualStyleBackColor = true;
            this.btnCatCancel.Click += new System.EventHandler(this.BtnCatCancel_Click);
            // 
            // btnCatSave
            // 
            this.btnCatSave.Location = new System.Drawing.Point(170, 109);
            this.btnCatSave.Name = "btnCatSave";
            this.btnCatSave.Size = new System.Drawing.Size(62, 23);
            this.btnCatSave.TabIndex = 2;
            this.btnCatSave.Text = "Save";
            this.btnCatSave.UseVisualStyleBackColor = true;
            this.btnCatSave.Click += new System.EventHandler(this.BtnCatSave_Click);
            // 
            // txbCatName
            // 
            this.txbCatName.Location = new System.Drawing.Point(118, 68);
            this.txbCatName.MaxLength = 20;
            this.txbCatName.Name = "txbCatName";
            this.txbCatName.Size = new System.Drawing.Size(118, 20);
            this.txbCatName.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(23, 71);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Category Name";
            // 
            // gbSubCat
            // 
            this.gbSubCat.Controls.Add(this.txbSubID);
            this.gbSubCat.Controls.Add(this.btnSubCancel);
            this.gbSubCat.Controls.Add(this.btnSubSave);
            this.gbSubCat.Controls.Add(this.txbSubName);
            this.gbSubCat.Controls.Add(this.label5);
            this.gbSubCat.Controls.Add(this.label4);
            this.gbSubCat.Location = new System.Drawing.Point(366, 273);
            this.gbSubCat.Name = "gbSubCat";
            this.gbSubCat.Size = new System.Drawing.Size(402, 153);
            this.gbSubCat.TabIndex = 13;
            this.gbSubCat.TabStop = false;
            this.gbSubCat.Text = "Sub Category";
            // 
            // txbSubID
            // 
            this.txbSubID.Location = new System.Drawing.Point(151, 30);
            this.txbSubID.Name = "txbSubID";
            this.txbSubID.Size = new System.Drawing.Size(82, 20);
            this.txbSubID.TabIndex = 7;
            // 
            // btnSubCancel
            // 
            this.btnSubCancel.Location = new System.Drawing.Point(245, 109);
            this.btnSubCancel.Name = "btnSubCancel";
            this.btnSubCancel.Size = new System.Drawing.Size(62, 23);
            this.btnSubCancel.TabIndex = 6;
            this.btnSubCancel.Text = "Cancel";
            this.btnSubCancel.UseVisualStyleBackColor = true;
            this.btnSubCancel.Click += new System.EventHandler(this.BtnSubCancel_Click);
            // 
            // btnSubSave
            // 
            this.btnSubSave.Location = new System.Drawing.Point(319, 109);
            this.btnSubSave.Name = "btnSubSave";
            this.btnSubSave.Size = new System.Drawing.Size(62, 23);
            this.btnSubSave.TabIndex = 5;
            this.btnSubSave.Text = "Save";
            this.btnSubSave.UseVisualStyleBackColor = true;
            this.btnSubSave.Click += new System.EventHandler(this.BtnSubSave_Click);
            // 
            // txbSubName
            // 
            this.txbSubName.Location = new System.Drawing.Point(151, 68);
            this.txbSubName.Name = "txbSubName";
            this.txbSubName.Size = new System.Drawing.Size(157, 20);
            this.txbSubName.TabIndex = 8;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(36, 71);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(102, 13);
            this.label5.TabIndex = 3;
            this.label5.Text = "Sub Category Name";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(36, 33);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(85, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "Sub Category ID";
            // 
            // cbCatName
            // 
            this.cbCatName.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbCatName.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.cbCatName.FormattingEnabled = true;
            this.cbCatName.Location = new System.Drawing.Point(611, 24);
            this.cbCatName.Name = "cbCatName";
            this.cbCatName.Size = new System.Drawing.Size(157, 21);
            this.cbCatName.TabIndex = 2;
            this.cbCatName.SelectedIndexChanged += new System.EventHandler(this.CbCatName_SelectedIndexChanged);
            // 
            // FormMasterCategory
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 470);
            this.Controls.Add(this.gbSubCat);
            this.Controls.Add(this.gbCategory);
            this.Controls.Add(this.btnSubAdd);
            this.Controls.Add(this.btnSubEdit);
            this.Controls.Add(this.cbCatName);
            this.Controls.Add(this.btnSubDel);
            this.Controls.Add(this.btnCatAdd);
            this.Controls.Add(this.btnCatEdit);
            this.Controls.Add(this.btnCatDel);
            this.Controls.Add(this.dgvSubcat);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dgvCategory);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "FormMasterCategory";
            this.StartPosition = System.Windows.Forms.FormStartPosition.Manual;
            this.Text = "FormMasterCategory";
            this.Load += new System.EventHandler(this.FormMasterCategory_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvCategory)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSubcat)).EndInit();
            this.gbCategory.ResumeLayout(false);
            this.gbCategory.PerformLayout();
            this.gbSubCat.ResumeLayout(false);
            this.gbSubCat.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvCategory;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgvSubcat;
        private System.Windows.Forms.Button btnCatDel;
        private System.Windows.Forms.Button btnCatEdit;
        private System.Windows.Forms.Button btnCatAdd;
        private System.Windows.Forms.Button btnSubAdd;
        private System.Windows.Forms.Button btnSubEdit;
        private System.Windows.Forms.Button btnSubDel;
        private System.Windows.Forms.GroupBox gbCategory;
        private System.Windows.Forms.Button btnCatCancel;
        private System.Windows.Forms.Button btnCatSave;
        private System.Windows.Forms.TextBox txbCatName;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox gbSubCat;
        private System.Windows.Forms.Button btnSubCancel;
        private System.Windows.Forms.Button btnSubSave;
        private System.Windows.Forms.TextBox txbSubName;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cbCatName;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txbCatID;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txbSubID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCatID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCatName;
        private System.Windows.Forms.DataGridViewTextBoxColumn colSubID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colSubCatName;
        private System.Windows.Forms.DataGridViewTextBoxColumn colSubCat;
    }
}