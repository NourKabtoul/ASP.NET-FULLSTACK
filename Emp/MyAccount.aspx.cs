using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_MyAccount : System.Web.UI.Page
{
    DS_LEAVE.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSDataTable LDT = new DS_LEAVE.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSDataTable();
    DS_LEAVETableAdapters.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSTableAdapter LAdapter = new DS_LEAVETableAdapters.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSTableAdapter();

    DS_SALARY.SALARY_SELECTDataTable SDT = new DS_SALARY.SALARY_SELECTDataTable();
    DS_SALARYTableAdapters.SALARY_SELECTTableAdapter SAdapter = new DS_SALARYTableAdapters.SALARY_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        LDT = LAdapter.Select_sum_Eid(Convert.ToInt32(Session["eid"].ToString()));
        if (LDT.Rows[0]["Days"].ToString() != "")
        {
            lblleave.Text = LDT.Rows[0]["Days"].ToString();

            LDT = LAdapter.Select_Sum_Eid_status(Convert.ToInt32(Session["eid"].ToString()), "Approve");
            if (LDT.Rows[0]["Days"].ToString() != "")
            {
                lblaleave.Text = LDT.Rows[0]["Days"].ToString();
            }

            LDT = LAdapter.Select_Sum_Eid_status(Convert.ToInt32(Session["eid"].ToString()), "Cancel");
            if (LDT.Rows[0]["Days"].ToString() != "")
            {
                lblcleave.Text = LDT.Rows[0]["Days"].ToString();
            }
        }


        SDT = SAdapter.Select_Salary_HOME(Session["acno"].ToString());
        if (SDT.Rows.Count != 0)
        {
            lblsalary.Text = SDT.Rows[0]["NetPay"].ToString();
            lblasal.Text = SDT.Rows[0]["allowance"].ToString();
            lbldsal.Text = SDT.Rows[0]["deducation"].ToString();
        }
    }
}