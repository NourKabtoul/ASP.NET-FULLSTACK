using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DS_ADMIN.Select_AdminMstDataTable ADT = new DS_ADMIN.Select_AdminMstDataTable();
    DS_ADMINTableAdapters.Select_AdminMstTableAdapter AAdapter = new DS_ADMINTableAdapters.Select_AdminMstTableAdapter();
    DS_EMP.EMPLOYEE_SELECTDataTable EDT = new DS_EMP.EMPLOYEE_SELECTDataTable();
    DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter EAdapter = new DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (rdoadmin.Checked == true)
        {
            ADT = AAdapter.Select_For_Login(txtuname.Text, txtpass.Text);
            if (ADT.Rows.Count > 0)
            {
                Session["admin"] = ADT.Rows[0]["username"].ToString();
                Session["apass"] = ADT.Rows[0]["password"].ToString();
                 Session["aid"]= ADT.Rows[0]["aid"].ToString();
                Response.Redirect("Main.aspx");

            }
            else
            {

                lbl.Text = "Invalid Detail";
            }
        }
        else
        {

            EDT = EAdapter.Select_Login(txtuname.Text, txtpass.Text);
            if (EDT.Rows.Count > 0)
            {
                Session["ename"] = EDT.Rows[0]["ename"].ToString();
                Session["eid"] = EDT.Rows[0]["eid"].ToString();
                Session["epass"] = EDT.Rows[0]["password"].ToString();
                Session["acno"] = EDT.Rows[0]["bankacno"].ToString();
                Response.Redirect("Emp/MyAccount.aspx");

            }
            else
            {

                lbl.Text = "Invalid Detail";
            }
        
        
        }
    }
}