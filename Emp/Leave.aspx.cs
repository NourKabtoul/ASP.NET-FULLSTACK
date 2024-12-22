using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_Leave : System.Web.UI.Page
{
    DS_LEAVE.SELECT_LEAVEMSTDataTable LDT = new DS_LEAVE.SELECT_LEAVEMSTDataTable();
    DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter LAdapter = new DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
    }
    protected void btnleave_Click(object sender, EventArgs e)
    {
        if (System.DateTime.Now < calfrom.SelectedDate.Date)
        {

            int days = Convert.ToInt32(drpdays.SelectedItem.Text);

            DateTime todate = calfrom.SelectedDate.AddDays(days - 1);



            LAdapter.Insert(Session["ename"].ToString(),Convert.ToInt32(Session["eid"].ToString()),calfrom.SelectedDate.Date, todate.Date, days, txtreason.Text,calfrom.SelectedDate.Date.ToString("MMMM"));
            txtreason.Text = "";
            drpdays.SelectedIndex = 0;
            lbl.Text = "Apply Successfully";
        } 
        else
        {
            lbl.Text = "select proper date";
        }
    }
    protected void calto_SelectionChanged(object sender, EventArgs e)
    {
       // int day=   calto.SelectedDate.Day - calfrom.SelectedDate.Day;
       // lbldays.Text = day.ToString();

    }
}