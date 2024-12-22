using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEmployee : System.Web.UI.Page
{
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
            drpclass.Items.Insert(0,"SELECT");
        
        }

    }
    protected void btnaddempl_Click(object sender, EventArgs e)
    {
        EAdapter.Insert(txtname.Text, txtadd.Text, txtcity.Text, txtpincode.Text, txtmoile.Text, drpdegree.SelectedItem.Text, drpdesignation.Text, drpbranch.Text, drpclass.SelectedItem.Text, Convert.ToDouble(txtbasicpay.Text), Convert.ToDouble(txtsalary.Text), txtbankaccountno.Text, txtemail.Text, txtpassword.Text);
        lbl.Text = "Detail Addedd ";
    }
    protected void drpclass_SelectedIndexChanged(object sender, EventArgs e)
    {

        ClsDT = ClsAdapter.SELECT_by_CID(Convert.ToInt32( drpclass.SelectedValue));
        txtsalary.Text = ClsDT.Rows[0]["salary"].ToString();
        txtbasicpay.Text = ClsDT.Rows[0]["basicpay"].ToString();

    }
}