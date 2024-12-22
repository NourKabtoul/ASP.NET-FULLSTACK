using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_ChangePass : System.Web.UI.Page
{
    DS_EMP.EMPLOYEE_SELECTDataTable EDT = new DS_EMP.EMPLOYEE_SELECTDataTable();
    DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter EAdapter = new DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        if (txtcurrentpass.Text == Session["epass"].ToString())
        {
            if (txtnewpass.Text == txtcurrentpass.Text)
            {
                lbl.Text = "new password does not same as current pass";
            }
            else
            {
                EAdapter.EMPLOYEE_CHNAGE_PASS(Convert.ToInt32(Session["eid"].ToString()), txtnewpass.Text);
                lbl.Text = "Password Changed";
            }
        }
        else
        {
            lbl.Text = "Invalid current password";
        }
    }
}