using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SalaryReport : System.Web.UI.Page
{
    DS_SALARY.SALARY_SELECTDataTable SDT = new DS_SALARY.SALARY_SELECTDataTable();
    DS_SALARYTableAdapters.SALARY_SELECTTableAdapter SAdapter = new DS_SALARYTableAdapters.SALARY_SELECTTableAdapter();

    DS_CLASS.CLASSMST_SELECTDataTable ClsDT = new DS_CLASS.CLASSMST_SELECTDataTable();
    DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter ClsAdapter = new DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter();
    DS_EMP.EMPLOYEE_SELECTDataTable EDT = new DS_EMP.EMPLOYEE_SELECTDataTable();
    DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter EAdapter = new DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter();

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
        if (drpmonth.SelectedItem.Text != "ALL" && drpemp.SelectedItem.Text != "ALL")
        {
            SDT = SAdapter.Select_By_month_Year_AccNo(drpmonth.SelectedItem.Text, Convert.ToInt32(txtyear.Text), drpemp.SelectedValue);
            GridView1.DataSource = SDT;
            GridView1.DataBind();
        }
        else if (drpmonth.SelectedItem.Text == "ALL" && drpemp.SelectedItem.Text != "ALL")
        {
            SDT = SAdapter.Select_AccNo_Year(drpemp.SelectedValue, Convert.ToInt32(txtyear.Text));
            GridView1.DataSource = SDT;
            GridView1.DataBind();
        }
        else if (drpmonth.SelectedItem.Text == "ALL" && drpemp.SelectedItem.Text == "ALL")
        {
            SDT = SAdapter.Select_By_Year_Class(Convert.ToInt32(txtyear.Text),drpclass.SelectedItem.Text);
            GridView1.DataSource = SDT;
            GridView1.DataBind();
        }
        else if (drpmonth.SelectedItem.Text != "ALL" && drpemp.SelectedItem.Text == "ALL")
        {
            SDT = SAdapter.Select_By_month_year_class(drpmonth.SelectedItem.Text,Convert.ToInt32(txtyear.Text), drpclass.SelectedItem.Text);
            GridView1.DataSource = SDT;
            GridView1.DataBind();
        }
    }
    protected void drpclass_SelectedIndexChanged(object sender, EventArgs e)
    {

        EDT = EAdapter.Select_For_Salary(drpclass.SelectedItem.Text, drpmonth.Text, Convert.ToInt32(txtyear.Text));
        drpemp.DataSource = EDT;
        drpemp.DataTextField = "Ename";
        drpemp.DataValueField = "BankAcno";
        drpemp.DataBind();
        drpemp.Items.Insert(0, "SELECT");
        drpemp.Items.Insert(1, "ALL");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["vid"] = e.CommandArgument.ToString();
        Response.Redirect("ViewSalary.aspx");
    }
}