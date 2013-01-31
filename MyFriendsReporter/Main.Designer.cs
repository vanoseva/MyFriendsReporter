namespace MyFriendsReporter
{
    partial class Main
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
            this.msMain = new System.Windows.Forms.MenuStrip();
            this.tsmiFile = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiClose = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiDebt = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiDebtOverview = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiDebtDetail = new System.Windows.Forms.ToolStripMenuItem();
            this.msMain.SuspendLayout();
            this.SuspendLayout();
            // 
            // msMain
            // 
            this.msMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiFile,
            this.tsmiDebt});
            this.msMain.Location = new System.Drawing.Point(0, 0);
            this.msMain.Name = "msMain";
            this.msMain.Size = new System.Drawing.Size(649, 24);
            this.msMain.TabIndex = 0;
            this.msMain.Text = "menuStrip1";
            // 
            // tsmiFile
            // 
            this.tsmiFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiClose});
            this.tsmiFile.Name = "tsmiFile";
            this.tsmiFile.Size = new System.Drawing.Size(37, 20);
            this.tsmiFile.Text = "File";
            // 
            // tsmiClose
            // 
            this.tsmiClose.Name = "tsmiClose";
            this.tsmiClose.Size = new System.Drawing.Size(103, 22);
            this.tsmiClose.Text = "Close";
            this.tsmiClose.Click += new System.EventHandler(this.tsmiClose_Click);
            // 
            // tsmiDebt
            // 
            this.tsmiDebt.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiDebtOverview,
            this.tsmiDebtDetail});
            this.tsmiDebt.Name = "tsmiDebt";
            this.tsmiDebt.Size = new System.Drawing.Size(44, 20);
            this.tsmiDebt.Text = "Debt";
            // 
            // tsmiDebtOverview
            // 
            this.tsmiDebtOverview.Name = "tsmiDebtOverview";
            this.tsmiDebtOverview.Size = new System.Drawing.Size(152, 22);
            this.tsmiDebtOverview.Text = "Overview";
            this.tsmiDebtOverview.Click += new System.EventHandler(this.tsmiDebtOverview_Click);
            // 
            // tsmiDebtDetail
            // 
            this.tsmiDebtDetail.Name = "tsmiDebtDetail";
            this.tsmiDebtDetail.Size = new System.Drawing.Size(152, 22);
            this.tsmiDebtDetail.Text = "Detail";
            this.tsmiDebtDetail.Click += new System.EventHandler(this.tsmiDebtDetail_Click);
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(649, 397);
            this.Controls.Add(this.msMain);
            this.MainMenuStrip = this.msMain;
            this.Name = "Main";
            this.Text = "Reporter";
            this.msMain.ResumeLayout(false);
            this.msMain.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip msMain;
        private System.Windows.Forms.ToolStripMenuItem tsmiFile;
        private System.Windows.Forms.ToolStripMenuItem tsmiDebt;
        private System.Windows.Forms.ToolStripMenuItem tsmiDebtOverview;
        private System.Windows.Forms.ToolStripMenuItem tsmiDebtDetail;
        private System.Windows.Forms.ToolStripMenuItem tsmiClose;
    }
}

