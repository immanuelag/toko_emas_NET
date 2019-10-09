namespace TokoEmasAppNET
{
    partial class FormMasterInventori
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
            this.dgvInventory = new System.Windows.Forms.DataGridView();
            this.colItemID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCatName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colSubName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colNama = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCarat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colWeight = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colSupplier = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colStock = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label2 = new System.Windows.Forms.Label();
            this.cbCatItems = new System.Windows.Forms.ComboBox();
            this.btnEditItems = new System.Windows.Forms.Button();
            this.btnAddItems = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.cbSubItems = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cbStatus = new System.Windows.Forms.ComboBox();
            this.btnXCode = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.lblSelectedRows = new System.Windows.Forms.Label();
            this.lblTotalRows = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvInventory)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(31, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(122, 18);
            this.label1.TabIndex = 3;
            this.label1.Text = "Tabel Inventory";
            // 
            // dgvInventory
            // 
            this.dgvInventory.AllowUserToAddRows = false;
            this.dgvInventory.AllowUserToDeleteRows = false;
            this.dgvInventory.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvInventory.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colItemID,
            this.colCatName,
            this.colSubName,
            this.colNama,
            this.colCarat,
            this.colWeight,
            this.colSupplier,
            this.colStock});
            this.dgvInventory.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgvInventory.Location = new System.Drawing.Point(34, 66);
            this.dgvInventory.Name = "dgvInventory";
            this.dgvInventory.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvInventory.ShowEditingIcon = false;
            this.dgvInventory.Size = new System.Drawing.Size(812, 357);
            this.dgvInventory.TabIndex = 4;
            this.dgvInventory.SelectionChanged += new System.EventHandler(this.DgvInventory_SelectionChanged);
            // 
            // colItemID
            // 
            this.colItemID.HeaderText = "Item ID";
            this.colItemID.Name = "colItemID";
            this.colItemID.Width = 70;
            // 
            // colCatName
            // 
            this.colCatName.HeaderText = "Category";
            this.colCatName.MinimumWidth = 30;
            this.colCatName.Name = "colCatName";
            this.colCatName.Width = 60;
            // 
            // colSubName
            // 
            this.colSubName.HeaderText = "Subcategory";
            this.colSubName.MinimumWidth = 50;
            this.colSubName.Name = "colSubName";
            // 
            // colNama
            // 
            this.colNama.HeaderText = "Item Name";
            this.colNama.Name = "colNama";
            this.colNama.Width = 200;
            // 
            // colCarat
            // 
            this.colCarat.HeaderText = "Carat";
            this.colCarat.Name = "colCarat";
            this.colCarat.Width = 70;
            // 
            // colWeight
            // 
            this.colWeight.HeaderText = "Weight";
            this.colWeight.Name = "colWeight";
            this.colWeight.Width = 80;
            // 
            // colSupplier
            // 
            this.colSupplier.HeaderText = "Supplier";
            this.colSupplier.MinimumWidth = 50;
            this.colSupplier.Name = "colSupplier";
            // 
            // colStock
            // 
            this.colStock.HeaderText = "Status";
            this.colStock.MinimumWidth = 40;
            this.colStock.Name = "colStock";
            this.colStock.Width = 80;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(294, 32);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Category";
            // 
            // cbCatItems
            // 
            this.cbCatItems.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbCatItems.FormattingEnabled = true;
            this.cbCatItems.Location = new System.Drawing.Point(349, 28);
            this.cbCatItems.Name = "cbCatItems";
            this.cbCatItems.Size = new System.Drawing.Size(97, 21);
            this.cbCatItems.TabIndex = 7;
            this.cbCatItems.SelectedIndexChanged += new System.EventHandler(this.CbCatItems_SelectedIndexChanged);
            // 
            // btnEditItems
            // 
            this.btnEditItems.Location = new System.Drawing.Point(767, 438);
            this.btnEditItems.Name = "btnEditItems";
            this.btnEditItems.Size = new System.Drawing.Size(75, 23);
            this.btnEditItems.TabIndex = 9;
            this.btnEditItems.Text = "Edit";
            this.btnEditItems.UseVisualStyleBackColor = true;
            this.btnEditItems.Click += new System.EventHandler(this.BtnEditItems_Click);
            // 
            // btnAddItems
            // 
            this.btnAddItems.Location = new System.Drawing.Point(677, 438);
            this.btnAddItems.Name = "btnAddItems";
            this.btnAddItems.Size = new System.Drawing.Size(75, 23);
            this.btnAddItems.TabIndex = 10;
            this.btnAddItems.Text = "Add";
            this.btnAddItems.UseVisualStyleBackColor = true;
            this.btnAddItems.Click += new System.EventHandler(this.BtnAddItems_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(463, 32);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(71, 13);
            this.label3.TabIndex = 12;
            this.label3.Text = "Sub Category";
            // 
            // cbSubItems
            // 
            this.cbSubItems.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbSubItems.FormattingEnabled = true;
            this.cbSubItems.Location = new System.Drawing.Point(540, 28);
            this.cbSubItems.Name = "cbSubItems";
            this.cbSubItems.Size = new System.Drawing.Size(138, 21);
            this.cbSubItems.TabIndex = 13;
            this.cbSubItems.SelectedIndexChanged += new System.EventHandler(this.CbSubItems_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(696, 32);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(37, 13);
            this.label4.TabIndex = 14;
            this.label4.Text = "Status";
            // 
            // cbStatus
            // 
            this.cbStatus.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbStatus.FormattingEnabled = true;
            this.cbStatus.Location = new System.Drawing.Point(747, 28);
            this.cbStatus.Name = "cbStatus";
            this.cbStatus.Size = new System.Drawing.Size(97, 21);
            this.cbStatus.TabIndex = 15;
            this.cbStatus.SelectedIndexChanged += new System.EventHandler(this.cbStatus_SelectedIndexChanged);
            // 
            // btnXCode
            // 
            this.btnXCode.Location = new System.Drawing.Point(34, 438);
            this.btnXCode.Name = "btnXCode";
            this.btnXCode.Size = new System.Drawing.Size(251, 23);
            this.btnXCode.TabIndex = 16;
            this.btnXCode.Text = "Generate XLS Barcode";
            this.btnXCode.UseVisualStyleBackColor = true;
            this.btnXCode.Click += new System.EventHandler(this.BtnXCode_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(526, 441);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(68, 16);
            this.label5.TabIndex = 17;
            this.label5.Text = "Selected :";
            // 
            // lblSelectedRows
            // 
            this.lblSelectedRows.AutoSize = true;
            this.lblSelectedRows.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSelectedRows.Location = new System.Drawing.Point(600, 441);
            this.lblSelectedRows.Name = "lblSelectedRows";
            this.lblSelectedRows.Size = new System.Drawing.Size(16, 16);
            this.lblSelectedRows.TabIndex = 18;
            this.lblSelectedRows.Text = "0";
            // 
            // lblTotalRows
            // 
            this.lblTotalRows.AutoSize = true;
            this.lblTotalRows.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotalRows.Location = new System.Drawing.Point(439, 441);
            this.lblTotalRows.Name = "lblTotalRows";
            this.lblTotalRows.Size = new System.Drawing.Size(16, 16);
            this.lblTotalRows.TabIndex = 20;
            this.lblTotalRows.Text = "0";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(378, 441);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(45, 16);
            this.label8.TabIndex = 19;
            this.label8.Text = "Total :";
            // 
            // FormMasterInventori
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(874, 481);
            this.Controls.Add(this.lblTotalRows);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.lblSelectedRows);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnXCode);
            this.Controls.Add(this.cbStatus);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.cbSubItems);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnAddItems);
            this.Controls.Add(this.btnEditItems);
            this.Controls.Add(this.cbCatItems);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dgvInventory);
            this.Controls.Add(this.label1);
            this.MaximizeBox = false;
            this.Name = "FormMasterInventori";
            this.Text = "FormMasterInventori";
            this.Load += new System.EventHandler(this.FormMasterInventori_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvInventory)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvInventory;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cbCatItems;
        private System.Windows.Forms.Button btnEditItems;
        private System.Windows.Forms.Button btnAddItems;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbSubItems;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbStatus;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCatName;
        private System.Windows.Forms.DataGridViewTextBoxColumn colSubName;
        private System.Windows.Forms.DataGridViewTextBoxColumn colNama;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCarat;
        private System.Windows.Forms.DataGridViewTextBoxColumn colWeight;
        private System.Windows.Forms.DataGridViewTextBoxColumn colSupplier;
        private System.Windows.Forms.DataGridViewTextBoxColumn colStock;
        private System.Windows.Forms.Button btnXCode;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lblSelectedRows;
        private System.Windows.Forms.Label lblTotalRows;
        private System.Windows.Forms.Label label8;
    }
}