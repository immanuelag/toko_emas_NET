namespace TokoEmasAppNET
{
    partial class FormInvDetail
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
            this.btnInvCancel = new System.Windows.Forms.Button();
            this.btnInvSave = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txbInvDetilID = new System.Windows.Forms.TextBox();
            this.cbCatItemDetil = new System.Windows.Forms.ComboBox();
            this.cbSubCatItemDetil = new System.Windows.Forms.ComboBox();
            this.txbInvName = new System.Windows.Forms.TextBox();
            this.cbInvCarat = new System.Windows.Forms.ComboBox();
            this.txbInvWeight = new System.Windows.Forms.TextBox();
            this.picInv = new System.Windows.Forms.PictureBox();
            this.label7 = new System.Windows.Forms.Label();
            this.btnInvDetBrowse = new System.Windows.Forms.Button();
            this.btnGenID = new System.Windows.Forms.Button();
            this.cbStatus = new System.Windows.Forms.ComboBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.cbSupplier = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.picInv)).BeginInit();
            this.SuspendLayout();
            // 
            // btnInvCancel
            // 
            this.btnInvCancel.Location = new System.Drawing.Point(194, 524);
            this.btnInvCancel.Name = "btnInvCancel";
            this.btnInvCancel.Size = new System.Drawing.Size(75, 23);
            this.btnInvCancel.TabIndex = 9;
            this.btnInvCancel.Text = "Cancel";
            this.btnInvCancel.UseVisualStyleBackColor = true;
            this.btnInvCancel.Click += new System.EventHandler(this.BtnInvCancel_Click);
            // 
            // btnInvSave
            // 
            this.btnInvSave.Location = new System.Drawing.Point(278, 524);
            this.btnInvSave.Name = "btnInvSave";
            this.btnInvSave.Size = new System.Drawing.Size(75, 23);
            this.btnInvSave.TabIndex = 8;
            this.btnInvSave.Text = "Save";
            this.btnInvSave.UseVisualStyleBackColor = true;
            this.btnInvSave.Click += new System.EventHandler(this.BtnInvSave_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(27, 109);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(21, 16);
            this.label1.TabIndex = 10;
            this.label1.Text = "ID";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(27, 145);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 16);
            this.label2.TabIndex = 11;
            this.label2.Text = "Name";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(26, 27);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(63, 16);
            this.label3.TabIndex = 12;
            this.label3.Text = "Category";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(26, 66);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(85, 16);
            this.label4.TabIndex = 13;
            this.label4.Text = "Subcategory";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(27, 184);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(40, 16);
            this.label5.TabIndex = 14;
            this.label5.Text = "Carat";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(27, 223);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(50, 16);
            this.label6.TabIndex = 15;
            this.label6.Text = "Weight";
            // 
            // txbInvDetilID
            // 
            this.txbInvDetilID.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbInvDetilID.Location = new System.Drawing.Point(138, 108);
            this.txbInvDetilID.Name = "txbInvDetilID";
            this.txbInvDetilID.Size = new System.Drawing.Size(76, 22);
            this.txbInvDetilID.TabIndex = 16;
            // 
            // cbCatItemDetil
            // 
            this.cbCatItemDetil.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbCatItemDetil.FormattingEnabled = true;
            this.cbCatItemDetil.Location = new System.Drawing.Point(138, 26);
            this.cbCatItemDetil.Name = "cbCatItemDetil";
            this.cbCatItemDetil.Size = new System.Drawing.Size(121, 24);
            this.cbCatItemDetil.TabIndex = 17;
            this.cbCatItemDetil.SelectedIndexChanged += new System.EventHandler(this.CbCatItemDetil_SelectedIndexChanged);
            // 
            // cbSubCatItemDetil
            // 
            this.cbSubCatItemDetil.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbSubCatItemDetil.FormattingEnabled = true;
            this.cbSubCatItemDetil.Location = new System.Drawing.Point(138, 65);
            this.cbSubCatItemDetil.Name = "cbSubCatItemDetil";
            this.cbSubCatItemDetil.Size = new System.Drawing.Size(121, 24);
            this.cbSubCatItemDetil.TabIndex = 18;
            // 
            // txbInvName
            // 
            this.txbInvName.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbInvName.Location = new System.Drawing.Point(138, 144);
            this.txbInvName.Name = "txbInvName";
            this.txbInvName.Size = new System.Drawing.Size(217, 22);
            this.txbInvName.TabIndex = 19;
            // 
            // cbInvCarat
            // 
            this.cbInvCarat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbInvCarat.FormattingEnabled = true;
            this.cbInvCarat.Location = new System.Drawing.Point(138, 183);
            this.cbInvCarat.Name = "cbInvCarat";
            this.cbInvCarat.Size = new System.Drawing.Size(76, 24);
            this.cbInvCarat.TabIndex = 20;
            // 
            // txbInvWeight
            // 
            this.txbInvWeight.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txbInvWeight.Location = new System.Drawing.Point(138, 222);
            this.txbInvWeight.Name = "txbInvWeight";
            this.txbInvWeight.Size = new System.Drawing.Size(76, 22);
            this.txbInvWeight.TabIndex = 21;
            // 
            // picInv
            // 
            this.picInv.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.picInv.Location = new System.Drawing.Point(138, 343);
            this.picInv.Name = "picInv";
            this.picInv.Size = new System.Drawing.Size(160, 160);
            this.picInv.TabIndex = 22;
            this.picInv.TabStop = false;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(27, 350);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(53, 16);
            this.label7.TabIndex = 23;
            this.label7.Text = "Images";
            // 
            // btnInvDetBrowse
            // 
            this.btnInvDetBrowse.Location = new System.Drawing.Point(30, 484);
            this.btnInvDetBrowse.Name = "btnInvDetBrowse";
            this.btnInvDetBrowse.Size = new System.Drawing.Size(75, 23);
            this.btnInvDetBrowse.TabIndex = 24;
            this.btnInvDetBrowse.Text = "Browse";
            this.btnInvDetBrowse.UseVisualStyleBackColor = true;
            // 
            // btnGenID
            // 
            this.btnGenID.Location = new System.Drawing.Point(254, 106);
            this.btnGenID.Name = "btnGenID";
            this.btnGenID.Size = new System.Drawing.Size(102, 23);
            this.btnGenID.TabIndex = 25;
            this.btnGenID.Text = "Generate";
            this.btnGenID.UseVisualStyleBackColor = true;
            this.btnGenID.Click += new System.EventHandler(this.btnGenID_Click);
            // 
            // cbStatus
            // 
            this.cbStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbStatus.FormattingEnabled = true;
            this.cbStatus.Location = new System.Drawing.Point(138, 261);
            this.cbStatus.Name = "cbStatus";
            this.cbStatus.Size = new System.Drawing.Size(120, 24);
            this.cbStatus.TabIndex = 26;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(26, 262);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(45, 16);
            this.label8.TabIndex = 27;
            this.label8.Text = "Status";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(27, 300);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(58, 16);
            this.label9.TabIndex = 29;
            this.label9.Text = "Supplier";
            // 
            // cbSupplier
            // 
            this.cbSupplier.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbSupplier.FormattingEnabled = true;
            this.cbSupplier.Location = new System.Drawing.Point(139, 299);
            this.cbSupplier.Name = "cbSupplier";
            this.cbSupplier.Size = new System.Drawing.Size(120, 24);
            this.cbSupplier.TabIndex = 28;
            // 
            // FormInvDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(379, 563);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.cbSupplier);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.cbStatus);
            this.Controls.Add(this.btnGenID);
            this.Controls.Add(this.btnInvDetBrowse);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.picInv);
            this.Controls.Add(this.txbInvWeight);
            this.Controls.Add(this.cbInvCarat);
            this.Controls.Add(this.txbInvName);
            this.Controls.Add(this.cbSubCatItemDetil);
            this.Controls.Add(this.cbCatItemDetil);
            this.Controls.Add(this.txbInvDetilID);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnInvCancel);
            this.Controls.Add(this.btnInvSave);
            this.Name = "FormInvDetail";
            this.Text = "Inventory Details";
            this.Load += new System.EventHandler(this.FormInvDetail_Load);
            ((System.ComponentModel.ISupportInitialize)(this.picInv)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnInvCancel;
        private System.Windows.Forms.Button btnInvSave;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txbInvDetilID;
        private System.Windows.Forms.ComboBox cbCatItemDetil;
        private System.Windows.Forms.ComboBox cbSubCatItemDetil;
        private System.Windows.Forms.TextBox txbInvName;
        private System.Windows.Forms.ComboBox cbInvCarat;
        private System.Windows.Forms.TextBox txbInvWeight;
        private System.Windows.Forms.PictureBox picInv;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button btnInvDetBrowse;
        private System.Windows.Forms.Button btnGenID;
        private System.Windows.Forms.ComboBox cbStatus;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cbSupplier;
    }
}