namespace WindowsFormsApp1
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.btnCatDel = new System.Windows.Forms.Button();
            this.btnCatEdit = new System.Windows.Forms.Button();
            this.btnCatAdd = new System.Windows.Forms.Button();
            this.btnSubAdd = new System.Windows.Forms.Button();
            this.btnSubEdit = new System.Windows.Forms.Button();
            this.btnSubDel = new System.Windows.Forms.Button();
            this.gbCategory = new System.Windows.Forms.GroupBox();
            this.gbSubCat = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.btnCatSave = new System.Windows.Forms.Button();
            this.btnCatCancel = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
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
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(26, 65);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(344, 150);
            this.dataGridView1.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(421, 23);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(156, 18);
            this.label2.TabIndex = 4;
            this.label2.Text = "Tabel Sub Category";
            // 
            // dataGridView2
            // 
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Location = new System.Drawing.Point(424, 65);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.Size = new System.Drawing.Size(344, 150);
            this.dataGridView2.TabIndex = 5;
            // 
            // btnCatDel
            // 
            this.btnCatDel.Location = new System.Drawing.Point(316, 232);
            this.btnCatDel.Name = "btnCatDel";
            this.btnCatDel.Size = new System.Drawing.Size(54, 23);
            this.btnCatDel.TabIndex = 6;
            this.btnCatDel.Text = "Delete";
            this.btnCatDel.UseVisualStyleBackColor = true;
            // 
            // btnCatEdit
            // 
            this.btnCatEdit.Location = new System.Drawing.Point(256, 232);
            this.btnCatEdit.Name = "btnCatEdit";
            this.btnCatEdit.Size = new System.Drawing.Size(54, 23);
            this.btnCatEdit.TabIndex = 7;
            this.btnCatEdit.Text = "Edit";
            this.btnCatEdit.UseVisualStyleBackColor = true;
            // 
            // btnCatAdd
            // 
            this.btnCatAdd.Location = new System.Drawing.Point(196, 232);
            this.btnCatAdd.Name = "btnCatAdd";
            this.btnCatAdd.Size = new System.Drawing.Size(54, 23);
            this.btnCatAdd.TabIndex = 8;
            this.btnCatAdd.Text = "Add";
            this.btnCatAdd.UseVisualStyleBackColor = true;
            // 
            // btnSubAdd
            // 
            this.btnSubAdd.Location = new System.Drawing.Point(594, 232);
            this.btnSubAdd.Name = "btnSubAdd";
            this.btnSubAdd.Size = new System.Drawing.Size(54, 23);
            this.btnSubAdd.TabIndex = 11;
            this.btnSubAdd.Text = "Add";
            this.btnSubAdd.UseVisualStyleBackColor = true;
            // 
            // btnSubEdit
            // 
            this.btnSubEdit.Location = new System.Drawing.Point(654, 232);
            this.btnSubEdit.Name = "btnSubEdit";
            this.btnSubEdit.Size = new System.Drawing.Size(54, 23);
            this.btnSubEdit.TabIndex = 10;
            this.btnSubEdit.Text = "Edit";
            this.btnSubEdit.UseVisualStyleBackColor = true;
            // 
            // btnSubDel
            // 
            this.btnSubDel.Location = new System.Drawing.Point(714, 232);
            this.btnSubDel.Name = "btnSubDel";
            this.btnSubDel.Size = new System.Drawing.Size(54, 23);
            this.btnSubDel.TabIndex = 9;
            this.btnSubDel.Text = "Delete";
            this.btnSubDel.UseVisualStyleBackColor = true;
            // 
            // gbCategory
            // 
            this.gbCategory.Controls.Add(this.btnCatCancel);
            this.gbCategory.Controls.Add(this.btnCatSave);
            this.gbCategory.Controls.Add(this.textBox1);
            this.gbCategory.Controls.Add(this.label3);
            this.gbCategory.Location = new System.Drawing.Point(26, 273);
            this.gbCategory.Name = "gbCategory";
            this.gbCategory.Size = new System.Drawing.Size(344, 153);
            this.gbCategory.TabIndex = 12;
            this.gbCategory.TabStop = false;
            this.gbCategory.Text = "Category";
            // 
            // gbSubCat
            // 
            this.gbSubCat.Controls.Add(this.button1);
            this.gbSubCat.Controls.Add(this.button2);
            this.gbSubCat.Controls.Add(this.textBox2);
            this.gbSubCat.Controls.Add(this.label5);
            this.gbSubCat.Controls.Add(this.comboBox1);
            this.gbSubCat.Controls.Add(this.label4);
            this.gbSubCat.Location = new System.Drawing.Point(424, 273);
            this.gbSubCat.Name = "gbSubCat";
            this.gbSubCat.Size = new System.Drawing.Size(344, 153);
            this.gbSubCat.TabIndex = 13;
            this.gbSubCat.TabStop = false;
            this.gbSubCat.Text = "Sub Category";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(39, 33);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(80, 13);
            this.label3.TabIndex = 0;
            this.label3.Text = "Category Name";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(134, 30);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(173, 20);
            this.textBox1.TabIndex = 1;
            // 
            // btnCatSave
            // 
            this.btnCatSave.Location = new System.Drawing.Point(245, 109);
            this.btnCatSave.Name = "btnCatSave";
            this.btnCatSave.Size = new System.Drawing.Size(62, 23);
            this.btnCatSave.TabIndex = 2;
            this.btnCatSave.Text = "Save";
            this.btnCatSave.UseVisualStyleBackColor = true;
            // 
            // btnCatCancel
            // 
            this.btnCatCancel.Location = new System.Drawing.Point(170, 109);
            this.btnCatCancel.Name = "btnCatCancel";
            this.btnCatCancel.Size = new System.Drawing.Size(62, 23);
            this.btnCatCancel.TabIndex = 3;
            this.btnCatCancel.Text = "Cancel";
            this.btnCatCancel.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(36, 33);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(80, 13);
            this.label4.TabIndex = 1;
            this.label4.Text = "Category Name";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(151, 30);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(157, 21);
            this.comboBox1.TabIndex = 2;
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
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(151, 68);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(157, 20);
            this.textBox2.TabIndex = 4;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(171, 109);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(62, 23);
            this.button1.TabIndex = 6;
            this.button1.Text = "Cancel";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(246, 109);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(62, 23);
            this.button2.TabIndex = 5;
            this.button2.Text = "Save";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // FormMasterCategory
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.gbSubCat);
            this.Controls.Add(this.gbCategory);
            this.Controls.Add(this.btnSubAdd);
            this.Controls.Add(this.btnSubEdit);
            this.Controls.Add(this.btnSubDel);
            this.Controls.Add(this.btnCatAdd);
            this.Controls.Add(this.btnCatEdit);
            this.Controls.Add(this.btnCatDel);
            this.Controls.Add(this.dataGridView2);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label1);
            this.Name = "FormMasterCategory";
            this.Text = "FormMasterCategory";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            this.gbCategory.ResumeLayout(false);
            this.gbCategory.PerformLayout();
            this.gbSubCat.ResumeLayout(false);
            this.gbSubCat.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.Button btnCatDel;
        private System.Windows.Forms.Button btnCatEdit;
        private System.Windows.Forms.Button btnCatAdd;
        private System.Windows.Forms.Button btnSubAdd;
        private System.Windows.Forms.Button btnSubEdit;
        private System.Windows.Forms.Button btnSubDel;
        private System.Windows.Forms.GroupBox gbCategory;
        private System.Windows.Forms.Button btnCatCancel;
        private System.Windows.Forms.Button btnCatSave;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox gbSubCat;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label4;
    }
}