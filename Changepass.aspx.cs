using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Changepass : System.Web.UI.Page
{
    DS_ADMIN.Select_AdminMstDataTable ADT = new DS_ADMIN.Select_AdminMstDataTable();
    DS_ADMINTableAdapters.Select_AdminMstTableAdapter AAdapter = new DS_ADMINTableAdapters.Select_AdminMstTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        if (txtcurrentpass.Text == Session["apass"].ToString())
        {
            if (txtnewpass.Text == txtcurrentpass.Text)
            {
                lbl.Text = "new password does not same as current pass";
            }
            else
            {
                AAdapter.AdminMst_change_pass(Convert.ToInt32(Session["aid"].ToString()), txtnewpass.Text);
                lbl.Text = "Password Changed";
            }
        }
        else
        {
            lbl.Text = "Invalid current password";
        }
    }
}