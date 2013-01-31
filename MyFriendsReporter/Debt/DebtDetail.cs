using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Microsoft.Reporting.WinForms;

namespace MyFriendsReporter.Debt
{
    public partial class DebtDetail : Form
    {
        public DebtDetail()
        {
            InitializeComponent();
        }

        private void DebtDetail_Load(object sender, EventArgs e)
        {
            //this.rvDebDetail.RefreshReport();

            // Khoi tao danh sach customers trong combobox.  
            MyFriendsDataSetTableAdapters.GetCustomersTableAdapter customerAdapter = new MyFriendsDataSetTableAdapters.GetCustomersTableAdapter();
            customerAdapter.Fill(this.myFriendsDataSet.GetCustomers);

            this.coboCustomers.DataSource = this.myFriendsDataSet.GetCustomers;
            this.coboCustomers.DisplayMember = "CustomerName";
            this.coboCustomers.ValueMember = "CustomerID";
        }

        private void btClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btReport_Click(object sender, EventArgs e)
        {
            DateTime fromDate = new DateTime(this.dtpFromDate.Value.Year, this.dtpFromDate.Value.Month, this.dtpFromDate.Value.Day, 0, 0, 0);
            DateTime toDate = new DateTime(this.dtpToDate.Value.Year, this.dtpToDate.Value.Month, this.dtpToDate.Value.Day, 23, 59, 59);

            this.reportDebtDetailTableAdapter.Fill(this.myFriendsDataSet.ReportDebtDetail, fromDate, toDate, this.coboCustomers.SelectedValue.ToString());

            ReportParameter rp = new ReportParameter("FromDate", fromDate.ToString("dd/MM/yyyy"));
            this.rvDebDetail.LocalReport.SetParameters(rp);

            rp = new ReportParameter("ToDate", toDate.ToString("dd/MM/yyyy"));
            this.rvDebDetail.LocalReport.SetParameters(rp);

            rp = new ReportParameter("CustomerName", this.myFriendsDataSet.GetCustomers[this.coboCustomers.SelectedIndex].CustomerName);
            this.rvDebDetail.LocalReport.SetParameters(rp);

            this.rvDebDetail.RefreshReport();
        }
    }
}
