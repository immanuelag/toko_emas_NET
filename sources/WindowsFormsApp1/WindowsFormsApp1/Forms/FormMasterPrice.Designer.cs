namespace TokoEmasAppNET
{
    partial class FormMasterPrice
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
            this.gbCategory = new System.Windows.Forms.GroupBox();
            this.txbCatID = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnCatCancel = new System.Windows.Forms.Button();
            this.btnCatSave = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.btnPriceAdd = new System.Windows.Forms.Button();
            this.btnPriceEdit = new System.Windows.Forms.Button();
            this.btnPriceDel = new System.Windows.Forms.Button();
            this.dgvMasterPrice = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.colPriceID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCarat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colSellPrice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colBuyPrice = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.gbCategory.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMasterPrice)).BeginInit();
            this.SuspendLayout();
            // 
            // gbCategory
            // 
            this.gbCategory.Controls.Add(this.comboBox1);
            this.gbCategory.Controls.Add(this.textBox2);
            this.gbCategory.Controls.Add(this.textBox1);
            this.gbCategory.Controls.Add(this.label4);
            this.gbCategory.Controls.Add(this.label2);
            this.gbCategory.Controls.Add(this.txbCatID);
            this.gbCategory.Controls.Add(this.label6);
            this.gbCategory.Controls.Add(this.btnCatCancel);
            this.gbCategory.Controls.Add(this.btnCatSave);
            this.gbCategory.Controls.Add(this.label3);
            this.gbCategory.Enabled = false;
            this.gbCategory.Location = new System.Drawing.Point(21, 267);
            this.gbCategory.Name = "gbCategory";
            this.gbCategory.Size = new System.Drawing.Size(400, 154);
            this.gbCategory.TabIndex = 18;
            this.gbCategory.TabStop = false;
            this.gbCategory.Text = "Price";
            // 
            // txbCatID
            // 
            this.txbCatID.Location = new System.Drawing.Point(85, 38);
            this.txbCatID.Name = "txbCatID";
            this.txbCatID.Size = new System.Drawing.Size(64, 20);
            this.txbCatID.TabIndex = 5;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(22, 41);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(45, 13);
            this.label6.TabIndex = 4;
            this.label6.Text = "Price ID";
            // 
            // btnCatCancel
            // 
            this.btnCatCancel.Location = new System.Drawing.Point(226, 109);
            this.btnCatCancel.Name = "btnCatCancel";
            this.btnCatCancel.Size = new System.Drawing.Size(62, 23);
            this.btnCatCancel.TabIndex = 3;
            this.btnCatCancel.Text = "Cancel";
            this.btnCatCancel.UseVisualStyleBackColor = true;
            // 
            // btnCatSave
            // 
            this.btnCatSave.Location = new System.Drawing.Point(311, 109);
            this.btnCatSave.Name = "btnCatSave";
            this.btnCatSave.Size = new System.Drawing.Size(62, 23);
            this.btnCatSave.TabIndex = 2;
            this.btnCatSave.Text = "Save";
            this.btnCatSave.UseVisualStyleBackColor = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(22, 71);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Carat";
            // 
            // btnPriceAdd
            // 
            this.btnPriceAdd.Location = new System.Drawing.Point(247, 226);
            this.btnPriceAdd.Name = "btnPriceAdd";
            this.btnPriceAdd.Size = new System.Drawing.Size(54, 23);
            this.btnPriceAdd.TabIndex = 17;
            this.btnPriceAdd.Text = "Add";
            this.btnPriceAdd.UseVisualStyleBackColor = true;
            // 
            // btnPriceEdit
            // 
            this.btnPriceEdit.Location = new System.Drawing.Point(307, 226);
            this.btnPriceEdit.Name = "btnPriceEdit";
            this.btnPriceEdit.Size = new System.Drawing.Size(54, 23);
            this.btnPriceEdit.TabIndex = 16;
            this.btnPriceEdit.Text = "Edit";
            this.btnPriceEdit.UseVisualStyleBackColor = true;
            // 
            // btnPriceDel
            // 
            this.btnPriceDel.Location = new System.Drawing.Point(367, 226);
            this.btnPriceDel.Name = "btnPriceDel";
            this.btnPriceDel.Size = new System.Drawing.Size(54, 23);
            this.btnPriceDel.TabIndex = 15;
            this.btnPriceDel.Text = "Delete";
            this.btnPriceDel.UseVisualStyleBackColor = true;
            // 
            // dgvMasterPrice
            // 
            this.dgvMasterPrice.AllowUserToAddRows = false;
            this.dgvMasterPrice.AllowUserToDeleteRows = false;
            this.dgvMasterPrice.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            this.dgvMasterPrice.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colPriceID,
            this.colCarat,
            this.colSellPrice,
            this.colBuyPrice});
            this.dgvMasterPrice.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.dgvMasterPrice.Location = new System.Drawing.Point(21, 59);
            this.dgvMasterPrice.MultiSelect = false;
            this.dgvMasterPrice.Name = "dgvMasterPrice";
            this.dgvMasterPrice.ReadOnly = true;
            this.dgvMasterPrice.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvMasterPrice.Size = new System.Drawing.Size(403, 150);
            this.dgvMasterPrice.TabIndex = 14;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(18, 17);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(125, 18);
            this.label1.TabIndex = 13;
            this.label1.Text = "Tabel Price List";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(171, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(65, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Selling Price";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(171, 71);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(76, 13);
            this.label4.TabIndex = 7;
            this.label4.Text = "Buyback Price";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(260, 38);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(113, 20);
            this.textBox1.TabIndex = 8;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(260, 68);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(113, 20);
            this.textBox2.TabIndex = 9;
            // 
            // colPriceID
            // 
            this.colPriceID.HeaderText = "Price ID";
            this.colPriceID.MinimumWidth = 50;
            this.colPriceID.Name = "colPriceID";
            this.colPriceID.ReadOnly = true;
            this.colPriceID.Width = 50;
            // 
            // colCarat
            // 
            this.colCarat.HeaderText = "Carat";
            this.colCarat.MinimumWidth = 70;
            this.colCarat.Name = "colCarat";
            this.colCarat.ReadOnly = true;
            this.colCarat.Width = 70;
            // 
            // colSellPrice
            // 
            this.colSellPrice.HeaderText = "Selling Price";
            this.colSellPrice.MinimumWidth = 100;
            this.colSellPrice.Name = "colSellPrice";
            this.colSellPrice.ReadOnly = true;
            // 
            // colBuyPrice
            // 
            this.colBuyPrice.HeaderText = "Buyback Price";
            this.colBuyPrice.MinimumWidth = 100;
            this.colBuyPrice.Name = "colBuyPrice";
            this.colBuyPrice.ReadOnly = true;
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(85, 67);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(64, 21);
            this.comboBox1.TabIndex = 10;
            // 
            // FormMasterPrice
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(451, 438);
            this.Controls.Add(this.gbCategory);
            this.Controls.Add(this.btnPriceAdd);
            this.Controls.Add(this.btnPriceEdit);
            this.Controls.Add(this.btnPriceDel);
            this.Controls.Add(this.dgvMasterPrice);
            this.Controls.Add(this.label1);
            this.Name = "FormMasterPrice";
            this.Text = "FormMasterPrice";
            this.gbCategory.ResumeLayout(false);
            this.gbCategory.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMasterPrice)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gbCategory;
        private System.Windows.Forms.TextBox txbCatID;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnCatCancel;
        private System.Windows.Forms.Button btnCatSave;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnPriceAdd;
        private System.Windows.Forms.Button btnPriceEdit;
        private System.Windows.Forms.Button btnPriceDel;
        private System.Windows.Forms.DataGridView dgvMasterPrice;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridViewTextBoxColumn colPriceID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCarat;
        private System.Windows.Forms.DataGridViewTextBoxColumn colSellPrice;
        private System.Windows.Forms.DataGridViewTextBoxColumn colBuyPrice;
        private System.Windows.Forms.ComboBox comboBox1;
    }
}