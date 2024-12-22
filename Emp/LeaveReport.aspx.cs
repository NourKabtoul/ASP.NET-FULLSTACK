using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_LeaveReport : System.Web.UI.Page
{
    DS_LEAVE.SELECT_LEAVEMSTDataTable LDT = new DS_LEAVE.SELECT_LEAVEMSTDataTable();
    DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter LAdapter = new DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnpending_Click(object sender, EventArgs e)
    {
        LDT=LAdapter.Select_By_Status_Ename("New",Session["ename"].ToString());
        GridView1.DataSource=LDT;
        GridView1.DataBind();
        lbl.Text = GridView1.Rows.Count.ToString() + " Record Found";
    }
    protected void btnapprove_Click(object sender, EventArgs e)
    {
        LDT=LAdapter.Select_By_Status_Ename("Approve",Session["ename"].ToString());
        GridView1.DataSource=LDT;
        GridView1.DataBind();
        lbl.Text = GridView1.Rows.Count.ToString() + " Record Found";
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        LDT=LAdapter.Select_By_Status_Ename("Cancel",Session["ename"].ToString());
        GridView1.DataSource=LDT;
        GridView1.DataBind();
        lbl.Text = GridView1.Rows.Count.ToString() + " Record Found";
    }
}