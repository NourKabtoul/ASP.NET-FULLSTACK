using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addadmin : System.Web.UI.Page
{/*
    user.Select_AdminMstDataTable ADT = new DS_ADMIN.Select_AdminMstDataTable();
    DS_ADMINTableAdapters.Select_AdminMstTableAdapter AAdapter = new DS_ADMINTableAdapters.Select_AdminMstTableAdapter();*/
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (Page.IsPostBack == false)
            {/*
                ADT = AAdapter.Select_For_Dispaly(Session["admin"].ToString());
                GridView1.DataSource = ADT;
                GridView1.DataBind();
            */
             }
        }
    }
    protected void btnaddadmin_Click(object sender, EventArgs e)
    {/*
        AAdapter.Insert(txtuname.Text, txtpass.Text);
        lbl.Text = "Record Added";

        ADT = AAdapter.Select_For_Dispaly(Session["admin"].ToString());
        GridView1.DataSource = ADT;
        GridView1.DataBind();
        */
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {/*
        int idd = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

        AAdapter.Delete(idd);
        ADT = AAdapter.Select_For_Dispaly(Session["admin"].ToString());
        GridView1.DataSource = ADT;
        GridView1.DataBind();
        lbl.Text = "Record Deleted";
*/    }
}