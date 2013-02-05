using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MyFriendsReporter.Debt;

namespace MyFriendsReporter
{
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();
        }

        private void tsmiClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void tsmiDebtOverview_Click(object sender, EventArgs e)
        {
            // Show dialog debt overview.
            DebtOverview debtOverview = new DebtOverview();
            debtOverview.Owner = this;
            debtOverview.ShowDialog();

        }

        private void tsmiDebtDetail_Click(object sender, EventArgs e)
        {
            DebtDetail debtDetail = new DebtDetail();
            debtDetail.Owner = this;
            debtDetail.ShowDialog();

        }
    }
}
