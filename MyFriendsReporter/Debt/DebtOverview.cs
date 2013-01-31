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
    public partial class DebtOverview : Form
    {
        public DebtOverview()
        {
            InitializeComponent();
        }

        private void DebtOverview_Load(object sender, EventArgs e)
        {
            //this.rvDebtOverview.RefreshReport();

            
        }

        private void btClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btReport_Click(object sender, EventArgs e)
        {
            DateTime fromDate = new DateTime(this.dtpFromDate.Value.Year, this.dtpFromDate.Value.Month, this.dtpFromDate.Value.Day, 0, 0, 0);
            DateTime toDate = new DateTime(this.dtpToDate.Value.Year, this.dtpToDate.Value.Month, this.dtpToDate.Value.Day, 23, 59, 59);

            this.reportDebtOverviewTableAdapter.Fill(this.myFriendsDataSet.ReportDebtOverview, fromDate, toDate);

            ReportParameter rp = new ReportParameter("FromDate", fromDate.ToString("dd/MM/yyyy"));
            this.rvDebtOverview.LocalReport.SetParameters(rp);

            rp = new ReportParameter("ToDate", toDate.ToString("dd/MM/yyyy"));
            this.rvDebtOverview.LocalReport.SetParameters(rp);

            this.rvDebtOverview.RefreshReport();
        }
    }
}
