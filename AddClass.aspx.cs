using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddClass : System.Web.UI.Page
{
    DS_CLASS.CLASSMST_SELECTDataTable CDT = new DS_CLASS.CLASSMST_SELECTDataTable();
    DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter CAdapter = new DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter.SELECT();
            GridView1.DataSource = CDT;
            GridView1.DataBind();
        }
        Label1.Text = "";

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {

        CAdapter.Insert(txtclass.Text, Convert.ToDouble(txtbpay.Text), Convert.ToDouble(txtsalary.Text), Convert.ToDouble(txttall.Text), Convert.ToDouble(txtmall.Text), Convert.ToDouble(txtwall.Text));

        CDT = CAdapter.SELECT();
        GridView1.DataSource = CDT;
        GridView1.DataBind();

        txtsalary.Text = "";
        txtclass.Text = ""; 
        txtbpay.Text = "";
        txttall.Text = "0";
        txtwall.Text = "0";
        txtmall.Text = "0";
        Label1.Text = "Class Added";


    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        CAdapter.Delete(Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value));
        CDT = CAdapter.SELECT();
        GridView1.DataSource = CDT;
        GridView1.DataBind();
        Label1.Text = "Record Deleted";
    }
}