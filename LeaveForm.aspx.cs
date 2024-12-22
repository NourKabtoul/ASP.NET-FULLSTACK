using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LeaveForm : System.Web.UI.Page
{
    DS_LEAVE.SELECT_LEAVEMSTDataTable LDT = new DS_LEAVE.SELECT_LEAVEMSTDataTable();
    DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter LAdapter = new DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        lblmsg0.Text = "";
        lblmsg1.Text = "";
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        LDT= LAdapter.Seelct_By_Status("New");

        drpemployee.DataSource = LDT;
        drpemployee.DataTextField = "Ename";
        drpemployee.DataValueField = "Ename";
        drpemployee.DataBind();
        MultiView1.ActiveViewIndex = 0;
        GridView1.DataSource = null;
        GridView1.DataBind();
        lbltitle.Text = "New";
        lblmsg.Text = drpemployee.Items.Count.ToString() + " Result Found";
    }
    protected void btnselect_Click(object sender, EventArgs e)
    {
        LDT = LAdapter.Select_By_Status_Ename("New",drpemployee.SelectedItem.Text);


        GridView1.DataSource = LDT;
        GridView1.DataBind();      
       
    }
    protected void BTNAPPROVE_Click(object sender, EventArgs e)
    {
        
    }
    protected void btncan_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        LDT = LAdapter.Seelct_By_Status("Approve");

        drpemployee0.DataSource = LDT;
        drpemployee0.DataTextField = "Ename";
        drpemployee0.DataValueField = "Ename";
        drpemployee0.DataBind();
        MultiView1.ActiveViewIndex = 1;
        //lbltitle.Text = "Approve";
        GridView2.DataSource = null;
        GridView2.DataBind();
        lblmsg0.Text = drpemployee0.Items.Count.ToString() + " Result Found";
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        LDT = LAdapter.Seelct_By_Status("Cancel");

        drpemployee1.DataSource = LDT;
        drpemployee1.DataTextField = "Ename";
        drpemployee1.DataValueField = "Ename";
        drpemployee1.DataBind();
        MultiView1.ActiveViewIndex = 2;
         lbltitle.Text = "Cancel";
         GridView3.DataSource = null;
         GridView3.DataBind();
         lblmsg1.Text = drpemployee1.Items.Count.ToString() + " Result Found";
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "app")
        {
            LAdapter.LEAVEMST_UPADTE_STATUS("Approve", Convert.ToInt32(e.CommandArgument.ToString()));
           

            LDT = LAdapter.Select_By_Status_Ename("New", drpemployee.SelectedItem.Text);
            GridView1.DataSource = LDT;
            GridView1.DataBind();

            LDT = LAdapter.Seelct_By_Status("New");

            drpemployee.DataSource = LDT;
            drpemployee.DataTextField = "Ename";
            drpemployee.DataValueField = "Ename";
            drpemployee.DataBind();

          
            lblmsg.Text = "Leave Approved";
        }
        else if (e.CommandName == "rej")
        {
            LAdapter.LEAVEMST_UPADTE_STATUS("Cancel", Convert.ToInt32(e.CommandArgument.ToString()));
            LDT = LAdapter.Select_By_Status_Ename("New", drpemployee.SelectedItem.Text);
            GridView1.DataSource = LDT;
            GridView1.DataBind();

            LDT = LAdapter.Seelct_By_Status("New");

            drpemployee.DataSource = LDT;
            drpemployee.DataTextField = "Ename";
            drpemployee.DataValueField = "Ename";
            drpemployee.DataBind();
            lblmsg.Text = "Leave Canceled";
        }
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnselect0_Click(object sender, EventArgs e)
    {

        LDT = LAdapter.Select_By_Status_Ename("Approve", drpemployee0.SelectedItem.Text);


        GridView2.DataSource = LDT;
        GridView2.DataBind(); 
    }
    protected void btnselect1_Click(object sender, EventArgs e)
    {

        LDT = LAdapter.Select_By_Status_Ename("Cancel", drpemployee1.SelectedItem.Text);


        GridView3.DataSource = LDT;
        GridView3.DataBind(); 
    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        LAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
        lblmsg0.Text = "Leave deleted";

        LDT = LAdapter.Select_By_Status_Ename("Approve", drpemployee0.SelectedItem.Text);
        GridView2.DataSource = LDT;
        GridView2.DataBind();

        LDT = LAdapter.Seelct_By_Status("Approve");

        drpemployee0.DataSource = LDT;
        drpemployee0.DataTextField = "Ename";
        drpemployee0.DataValueField = "Ename";
        drpemployee0.DataBind();
    }
    protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        LAdapter.Delete(Convert.ToInt32(e.CommandArgument.ToString()));
        lblmsg1.Text = "Leave deleted";

        LDT = LAdapter.Select_By_Status_Ename("Cancel", drpemployee1.SelectedItem.Text);
        GridView3.DataSource = LDT;
        GridView3.DataBind();

        LDT = LAdapter.Seelct_By_Status("Cancel");

        drpemployee1.DataSource = LDT;
        drpemployee1.DataTextField = "Ename";
        drpemployee1.DataValueField = "Ename";
        drpemployee1.DataBind();
    }
}