namespace MyFriendsReporter.Debt
{
    partial class DebtDetail
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
            this.btClose = new System.Windows.Forms.Button();
            this.labelToDate = new System.Windows.Forms.Label();
            this.labelFromDate = new System.Windows.Forms.Label();
            this.btReport = new System.Windows.Forms.Button();
            this.dtpToDate = new System.Windows.Forms.DateTimePicker();
            this.dtpFromDate = new System.Windows.Forms.DateTimePicker();
            this.rvDebDetail = new Microsoft.Reporting.WinForms.ReportViewer();
            this.coboCustomers = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.reportDebtDetailBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.myFriendsDataSet = new MyFriendsReporter.MyFriendsDataSet();
            this.reportDebtDetailTableAdapter = new MyFriendsReporter.MyFriendsDataSetTableAdapters.ReportDebtDetailTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.reportDebtDetailBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.myFriendsDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // btClose
            // 
            this.btClose.Location = new System.Drawing.Point(631, 11);
            this.btClose.Name = "btClose";
            this.btClose.Size = new System.Drawing.Size(75, 23);
            this.btClose.TabIndex = 11;
            this.btClose.Text = "Close";
            this.btClose.UseVisualStyleBackColor = true;
            this.btClose.Click += new System.EventHandler(this.btClose_Click);
            // 
            // labelToDate
            // 
            this.labelToDate.AutoSize = true;
            this.labelToDate.Location = new System.Drawing.Point(296, 16);
            this.labelToDate.Name = "labelToDate";
            this.labelToDate.Size = new System.Drawing.Size(23, 13);
            this.labelToDate.TabIndex = 10;
            this.labelToDate.Text = "To:";
            // 
            // labelFromDate
            // 
            this.labelFromDate.AutoSize = true;
            this.labelFromDate.Location = new System.Drawing.Point(42, 16);
            this.labelFromDate.Name = "labelFromDate";
            this.labelFromDate.Size = new System.Drawing.Size(33, 13);
            this.labelFromDate.TabIndex = 9;
            this.labelFromDate.Text = "From:";
            // 
            // btReport
            // 
            this.btReport.Location = new System.Drawing.Point(541, 11);
            this.btReport.Name = "btReport";
            this.btReport.Size = new System.Drawing.Size(75, 23);
            this.btReport.TabIndex = 8;
            this.btReport.Text = "Report";
            this.btReport.UseVisualStyleBackColor = true;
            this.btReport.Click += new System.EventHandler(this.btReport_Click);
            // 
            // dtpToDate
            // 
            this.dtpToDate.Location = new System.Drawing.Point(322, 12);
            this.dtpToDate.Name = "dtpToDate";
            this.dtpToDate.Size = new System.Drawing.Size(200, 20);
            this.dtpToDate.TabIndex = 7;
            // 
            // dtpFromDate
            // 
            this.dtpFromDate.Location = new System.Drawing.Point(79, 12);
            this.dtpFromDate.Name = "dtpFromDate";
            this.dtpFromDate.Size = new System.Drawing.Size(200, 20);
            this.dtpFromDate.TabIndex = 6;
            // 
            // rvDebDetail
            // 
            this.rvDebDetail.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            reportDataSource1.Name = "MyFriendsDataSet";
            reportDataSource1.Value = this.reportDebtDetailBindingSource;
            this.rvDebDetail.LocalReport.DataSources.Add(reportDataSource1);
            this.rvDebDetail.LocalReport.ReportEmbeddedResource = "MyFriendsReporter.Reports.DebtDetail.rdlc";
            this.rvDebDetail.Location = new System.Drawing.Point(13, 73);
            this.rvDebDetail.Name = "rvDebDetail";
            this.rvDebDetail.Size = new System.Drawing.Size(828, 195);
            this.rvDebDetail.TabIndex = 12;
            // 
            // coboCustomers
            // 
            this.coboCustomers.FormattingEnabled = true;
            this.coboCustomers.Location = new System.Drawing.Point(79, 42);
            this.coboCustomers.Name = "coboCustomers";
            this.coboCustomers.Size = new System.Drawing.Size(200, 21);
            this.coboCustomers.TabIndex = 13;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 13);
            this.label1.TabIndex = 14;
            this.label1.Text = "Customers:";
            // 
            // reportDebtDetailBindingSource
            // 
            this.reportDebtDetailBindingSource.DataMember = "ReportDebtDetail";
            this.reportDebtDetailBindingSource.DataSource = this.myFriendsDataSet;
            // 
            // myFriendsDataSet
            // 
            this.myFriendsDataSet.DataSetName = "MyFriendsDataSet";
            this.myFriendsDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportDebtDetailTableAdapter
            // 
            this.reportDebtDetailTableAdapter.ClearBeforeFill = true;
            // 
            // DebtDetail
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(853, 280);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.coboCustomers);
            this.Controls.Add(this.rvDebDetail);
            this.Controls.Add(this.btClose);
            this.Controls.Add(this.labelToDate);
            this.Controls.Add(this.labelFromDate);
            this.Controls.Add(this.btReport);
            this.Controls.Add(this.dtpToDate);
            this.Controls.Add(this.dtpFromDate);
            this.Name = "DebtDetail";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Debt Detail";
            this.Load += new System.EventHandler(this.DebtDetail_Load);
            ((System.ComponentModel.ISupportInitialize)(this.reportDebtDetailBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.myFriendsDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btClose;
        private System.Windows.Forms.Label labelToDate;
        private System.Windows.Forms.Label labelFromDate;
        private System.Windows.Forms.Button btReport;
        private System.Windows.Forms.DateTimePicker dtpToDate;
        private System.Windows.Forms.DateTimePicker dtpFromDate;
        private Microsoft.Reporting.WinForms.ReportViewer rvDebDetail;
        private System.Windows.Forms.ComboBox coboCustomers;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.BindingSource reportDebtDetailBindingSource;
        private MyFriendsDataSet myFriendsDataSet;
        private MyFriendsDataSetTableAdapters.ReportDebtDetailTableAdapter reportDebtDetailTableAdapter;
    }
}