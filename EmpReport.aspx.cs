using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmpReport : System.Web.UI.Page
{
    DS_EMP.EMPLOYEE_SELECTDataTable EDT = new DS_EMP.EMPLOYEE_SELECTDataTable();
    DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter EAdapter = new DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";

    }
    protected void drpbranch_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpemployee.Items.Clear();
        EDT = EAdapter.Select_By_Branch(drpbranch.SelectedItem.Text);
        drpemployee.DataSource = EDT;
        drpemployee.DataTextField = "Ename";
        drpemployee.DataValueField = "EID";
        drpemployee.DataBind();
        drpemployee.Items.Insert(0, "SELECT");
        MultiView1.ActiveViewIndex = -1;
       

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
       // try
       // {
            EDT = EAdapter.Select_By_EID(Convert.ToInt32(drpemployee.SelectedValue));
            if (EDT.Rows.Count > 0)
            {
                ViewState["eid"] = EDT.Rows[0]["eid"].ToString();
                lblname.Text = EDT.Rows[0]["Ename"].ToString();
                lbladd.Text = EDT.Rows[0]["add"].ToString();
                lblcity.Text = EDT.Rows[0]["city"].ToString();
                lblpincode.Text = EDT.Rows[0]["pincode"].ToString();
                lblmobile.Text = EDT.Rows[0]["mobile"].ToString();
                lbldegree.Text = EDT.Rows[0]["degree"].ToString();
                lbldesign.Text = EDT.Rows[0]["designation"].ToString();
                lblbranch.Text = EDT.Rows[0]["branch"].ToString();
                lblclass.Text = EDT.Rows[0]["class"].ToString();
                lblbasicpay.Text = EDT.Rows[0]["basicpay"].ToString();
                lblsalary.Text = EDT.Rows[0]["salary"].ToString();
                lblbankaco.Text = EDT.Rows[0]["bankacno"].ToString();
                lblemail.Text = EDT.Rows[0]["email"].ToString();
                lblpass.Text = EDT.Rows[0]["password"].ToString();
                lblstatus.Text = EDT.Rows[0]["status"].ToString();
                MultiView1.ActiveViewIndex = 0;
                if (EDT.Rows[0]["status"].ToString() == "Active")
                {
                    btnstatus.Text = "InActive";
                }
                else
                {
                    btnstatus.Text = "Active";
                }
            }
            else
            {
                lbl.Text = "Error !!";
                MultiView1.ActiveViewIndex = -1;
            }
       // }
       // catch
       // {
       //     lbl.Text = "Error !!";
       // }
    }
  

    protected void btndelemp_Click(object sender, EventArgs e)
    {
        EAdapter.Delete(Convert.ToInt32(ViewState["eid"].ToString()));
        lbl.Text = "Record Deleted ";
        MultiView1.ActiveViewIndex = -1;
        drpemployee.Items.Clear();



    }

    protected void btnstatus_Click(object sender, EventArgs e)
    {
        if (lblstatus.Text == "Active")
        {
            EAdapter.EMPLOYEE_CHANGE_STATUS(Convert.ToInt32(ViewState["eid"].ToString()), "InActive");
            lblstatus.Text = "InActive";
            btnstatus.Text = "Active";
        }
        else if (lblstatus.Text == "InActive")
        {
            EAdapter.EMPLOYEE_CHANGE_STATUS(Convert.ToInt32(ViewState["eid"].ToString()), "Active");
            lblstatus.Text = "Active";
            btnstatus.Text = "InActive";
        }
    }
}