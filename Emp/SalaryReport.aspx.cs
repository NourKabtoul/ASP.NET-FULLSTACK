using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_SalaryReport : System.Web.UI.Page
{
    DS_SALARY.SALARY_SELECTDataTable SDT = new DS_SALARY.SALARY_SELECTDataTable();
    DS_SALARYTableAdapters.SALARY_SELECTTableAdapter SAdapter = new DS_SALARYTableAdapters.SALARY_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtyear.Text = System.DateTime.Now.Year.ToString();

    }
    protected void btnselect_Click(object sender, EventArgs e)
    {
        if (drpmonth.SelectedItem.Text != "ALL")
        {
            SDT = SAdapter.Select_By_month_Year_AccNo(drpmonth.SelectedItem.Text, Convert.ToInt32(txtyear.Text), Session["acno"].ToString());
            GridView1.DataSource = SDT;
            GridView1.DataBind();
        }
        else
        {
            SDT = SAdapter.Select_AccNo_Year(Session["acno"].ToString(), Convert.ToInt32(txtyear.Text));
            GridView1.DataSource = SDT;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["vid"] = e.CommandArgument.ToString();
        Response.Redirect("ViewSalary.aspx");
    }
}