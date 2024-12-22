using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YearReport : System.Web.UI.Page
{
    DS_CLASS.CLASSMST_SELECTDataTable ClsDT = new DS_CLASS.CLASSMST_SELECTDataTable();
    DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter ClsAdapter = new DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter();
  
    DS_EMP.EMPLOYEE_SELECTDataTable EDT = new DS_EMP.EMPLOYEE_SELECTDataTable();
    DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter EAdapter = new DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter();
    DS_SALARY.SALARY_YEAR_REPORTDataTable SalDT = new DS_SALARY.SALARY_YEAR_REPORTDataTable();
    DS_SALARYTableAdapters.SALARY_YEAR_REPORTTableAdapter SalAdapter = new DS_SALARYTableAdapters.SALARY_YEAR_REPORTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            ClsDT = ClsAdapter.SELECT();
            drpclass.DataSource = ClsDT;
            drpclass.DataTextField = "Class";
            drpclass.DataValueField = "Cid";
            drpclass.DataBind();
            drpclass.Items.Insert(0, "SELECT");
            txtyear.Text = System.DateTime.Now.Year.ToString();

        }
    }
    protected void btnselect_Click(object sender, EventArgs e)
    {

        if (drpemp.SelectedItem.Text == "ALL")
        {
            SalDT = SalAdapter.Salary_Year_ALL(Convert.ToInt32(txtyear.Text), drpclass.SelectedItem.Text);
            GridView1.DataSource = SalDT;
            GridView1.DataBind();
        }
        else
        {
            SalDT = SalAdapter.Salary_Accno(Convert.ToInt32(txtyear.Text), drpclass.SelectedItem.Text,drpemp.SelectedValue);
            GridView1.DataSource = SalDT;
            GridView1.DataBind();
        }
    }
    protected void drpclass_SelectedIndexChanged(object sender, EventArgs e)
    {
        EDT = EAdapter.Select_For_Year_Report(drpclass.SelectedItem.Text, Convert.ToInt32(txtyear.Text));
        drpemp.DataSource = EDT;
        drpemp.DataTextField = "Ename";
        drpemp.DataValueField = "BankAcno";
        drpemp.DataBind();
        drpemp.Items.Insert(0, "SELECT");
        drpemp.Items.Insert(1, "ALL");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["bid"] = e.CommandArgument.ToString();
        Response.Redirect("YReport.aspx");
    }
}