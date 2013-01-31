namespace MyFriendsReporter.Debt
{
    partial class DebtOverview
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
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.reportDebtOverviewBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.myFriendsDataSet = new MyFriendsReporter.MyFriendsDataSet();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.btReport = new System.Windows.Forms.Button();
            this.labelFromDate = new System.Windows.Forms.Label();
            this.labelToDate = new System.Windows.Forms.Label();
            this.btClose = new System.Windows.Forms.Button();
            this.rvDebtOverview = new Microsoft.Reporting.WinForms.ReportViewer();
            this.reportDebtOverviewTableAdapter = new MyFriendsReporter.MyFriendsDataSetTableAdapters.ReportDebtOverviewTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.reportDebtOverviewBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.myFriendsDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // reportDebtOverviewBindingSource
            // 
            this.reportDebtOverviewBindingSource.DataMember = "ReportDebtOverview";
            this.reportDebtOverviewBindingSource.DataSource = this.myFriendsDataSet;
            // 
            // myFriendsDataSet
            // 
            this.myFriendsDataSet.DataSetName = "MyFriendsDataSet";
            this.myFriendsDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // dtpFromDate
            // 
            this.dtpFromDate.Location = new System.Drawing.Point(48, 15);
            this.dtpFromDate.Name = "dtpFromDate";
            this.dtpFromDate.Size = new System.Drawing.Size(200, 20);
            this.dtpFromDate.TabIndex = 0;
            // 
            // dtpToDate
            // 
            this.dtpToDate.Location = new System.Drawing.Point(291, 15);
            this.dtpToDate.Name = "dtpToDate";
            this.dtpToDate.Size = new System.Drawing.Size(200, 20);
            this.dtpToDate.TabIndex = 1;
            // 
            // btReport
            // 
            this.btReport.Location = new System.Drawing.Point(510, 14);
            this.btReport.Name = "btReport";
            this.btReport.Size = new System.Drawing.Size(75, 23);
            this.btReport.TabIndex = 2;
            this.btReport.Text = "Report";
            this.btReport.UseVisualStyleBackColor = true;
            this.btReport.Click += new System.EventHandler(this.btReport_Click);
            // 
            // labelFromDate
            // 
            this.labelFromDate.AutoSize = true;
            this.labelFromDate.Location = new System.Drawing.Point(12, 19);
            this.labelFromDate.Name = "labelFromDate";
            this.labelFromDate.Size = new System.Drawing.Size(33, 13);
            this.labelFromDate.TabIndex = 3;
            this.labelFromDate.Text = "From:";
            // 
            // labelToDate
            // 
            this.labelToDate.AutoSize = true;
            this.labelToDate.Location = new System.Drawing.Point(265, 19);
            this.labelToDate.Name = "labelToDate";
            this.labelToDate.Size = new System.Drawing.Size(23, 13);
            this.labelToDate.TabIndex = 4;
            this.labelToDate.Text = "To:";
            // 
            // btClose
            // 
            this.btClose.Location = new System.Drawing.Point(600, 14);
            this.btClose.Name = "btClose";
            this.btClose.Size = new System.Drawing.Size(75, 23);
            this.btClose.TabIndex = 5;
            this.btClose.Text = "Close";
            this.btClose.UseVisualStyleBackColor = true;
            this.btClose.Click += new System.EventHandler(this.btClose_Click);
            // 
            // rvDebtOverview
            // 
            this.rvDebtOverview.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            reportDataSource1.Name = "ReportDebtOverview";
            reportDataSource1.Value = this.reportDebtOverviewBindingSource;
            this.rvDebtOverview.LocalReport.DataSources.Add(reportDataSource1);
            this.rvDebtOverview.LocalReport.ReportEmbeddedResource = "MyFriendsReporter.Reports.DebtOverview.rdlc";
            this.rvDebtOverview.Location = new System.Drawing.Point(13, 46);
            this.rvDebtOverview.Name = "rvDebtOverview";
            this.rvDebtOverview.Size = new System.Drawing.Size(676, 204);
            this.rvDebtOverview.TabIndex = 6;
            // 
            // reportDebtOverviewTableAdapter
            // 
            this.reportDebtOverviewTableAdapter.ClearBeforeFill = true;
            // 
            // DebtOverview
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(701, 262);
            this.Controls.Add(this.rvDebtOverview);
            this.Controls.Add(this.btClose);
            this.Controls.Add(this.labelToDate);
            this.Controls.Add(this.labelFromDate);
            this.Controls.Add(this.btReport);
            this.Controls.Add(this.dtpToDate);
            this.Controls.Add(this.dtpFromDate);
            this.Name = "DebtOverview";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Debt Overview";
            this.Load += new System.EventHandler(this.DebtOverview_Load);
            ((System.ComponentModel.ISupportInitialize)(this.reportDebtOverviewBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.myFriendsDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private System.Windows.Forms.Button btReport;
        private System.Windows.Forms.Label labelFromDate;
        private System.Windows.Forms.Label labelToDate;
        private System.Windows.Forms.Button btClose;
        private Microsoft.Reporting.WinForms.ReportViewer rvDebtOverview;        
        private MyFriendsDataSet myFriendsDataSet;
        private System.Windows.Forms.BindingSource reportDebtOverviewBindingSource;
        private MyFriendsDataSetTableAdapters.ReportDebtOverviewTableAdapter reportDebtOverviewTableAdapter;
    }
}