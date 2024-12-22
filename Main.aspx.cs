using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    DS_EMP.EMPLOYEE_SELECTDataTable EDT = new DS_EMP.EMPLOYEE_SELECTDataTable();
    DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter EAdapter = new DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter();
    DS_LEAVE.SELECT_LEAVEMSTDataTable LDT = new DS_LEAVE.SELECT_LEAVEMSTDataTable();
    DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter LAdapter = new DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        EDT = EAdapter.select();
        lblemp.Text = EDT.Rows.Count.ToString();

        EDT = EAdapter.Select_By_Status("Active");
        lblaemp.Text = EDT.Rows.Count.ToString();

        EDT = EAdapter.Select_By_Status("InActive");
        lbldemp.Text = EDT.Rows.Count.ToString();

        LDT = LAdapter.Seelct_By_Status("New");
        lblnleave.Text = LDT.Rows.Count.ToString();

        LDT = LAdapter.Seelct_By_Status("Approve");
        lblaleave.Text = LDT.Rows.Count.ToString();

        LDT = LAdapter.Seelct_By_Status("Cancel");
        lblrleave.Text = LDT.Rows.Count.ToString();
    }
}