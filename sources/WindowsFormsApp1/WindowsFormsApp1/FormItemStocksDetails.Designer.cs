namespace TokoEmasAppNET
{
    partial class FormItemStocksDetails
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.colItemID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colItemCat = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colItemSub = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colItemWeight = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colItemStatus = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.btnChecked = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colItemID,
            this.colItemCat,
            this.colItemSub,
            this.colItemWeight,
            this.colItemStatus});
            this.dataGridView1.Location = new System.Drawing.Point(23, 66);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 82;
            this.dataGridView1.Size = new System.Drawing.Size(636, 338);
            this.dataGridView1.TabIndex = 0;
            // 
            // colItemID
            // 
            this.colItemID.HeaderText = "Item ID";
            this.colItemID.MinimumWidth = 10;
            this.colItemID.Name = "colItemID";
            this.colItemID.ReadOnly = true;
            this.colItemID.Width = 200;
            // 
            // colItemCat
            // 
            this.colItemCat.HeaderText = "Category";
            this.colItemCat.MinimumWidth = 80;
            this.colItemCat.Name = "colItemCat";
            this.colItemCat.ReadOnly = true;
            this.colItemCat.Width = 120;
            // 
            // colItemSub
            // 
            this.colItemSub.HeaderText = "Subcategory";
            this.colItemSub.MinimumWidth = 100;
            this.colItemSub.Name = "colItemSub";
            this.colItemSub.ReadOnly = true;
            this.colItemSub.Width = 150;
            // 
            // colItemWeight
            // 
            this.colItemWeight.HeaderText = "Weight";
            this.colItemWeight.MinimumWidth = 60;
            this.colItemWeight.Name = "colItemWeight";
            this.colItemWeight.ReadOnly = true;
            this.colItemWeight.Width = 200;
            // 
            // colItemStatus
            // 
            this.colItemStatus.HeaderText = "Item Status";
            this.colItemStatus.MinimumWidth = 80;
            this.colItemStatus.Name = "colItemStatus";
            this.colItemStatus.ReadOnly = true;
            this.colItemStatus.Width = 120;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(20, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(41, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Item ID";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(78, 30);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 2;
            // 
            // btnChecked
            // 
            this.btnChecked.Location = new System.Drawing.Point(194, 28);
            this.btnChecked.Name = "btnChecked";
            this.btnChecked.Size = new System.Drawing.Size(75, 23);
            this.btnChecked.TabIndex = 3;
            this.btnChecked.Text = "Checked";
            this.btnChecked.UseVisualStyleBackColor = true;
            this.btnChecked.Click += new System.EventHandler(this.btnChecked_Click);
            // 
            // FormItemStocksDetails
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(679, 389);
            this.Controls.Add(this.btnChecked);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "FormItemStocksDetails";
            this.Text = "FormItemStocksDetails";
            this.Load += new System.EventHandler(this.FormItemStocksDetails_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemCat;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemSub;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemWeight;
        private System.Windows.Forms.DataGridViewTextBoxColumn colItemStatus;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Button btnChecked;
    }
}