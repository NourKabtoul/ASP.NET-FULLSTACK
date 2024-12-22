using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GenerateSalary : System.Web.UI.Page
{
    DS_CLASS.CLASSMST_SELECTDataTable ClsDT = new DS_CLASS.CLASSMST_SELECTDataTable();
    DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter ClsAdapter = new DS_CLASSTableAdapters.CLASSMST_SELECTTableAdapter();
    
    DS_EMP.EMPLOYEE_SELECTDataTable EDT = new DS_EMP.EMPLOYEE_SELECTDataTable();
    DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter EAdapter = new DS_EMPTableAdapters.EMPLOYEE_SELECTTableAdapter();

    DS_LEAVE.SELECT_LEAVEMSTDataTable LDT = new DS_LEAVE.SELECT_LEAVEMSTDataTable();
    DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter LAdapter = new DS_LEAVETableAdapters.SELECT_LEAVEMSTTableAdapter();

    DS_LEAVE.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSDataTable LSDT = new DS_LEAVE.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSDataTable();
    DS_LEAVETableAdapters.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSTableAdapter LSAdapter = new DS_LEAVETableAdapters.LEAVEMST_SELECT_SUM_BY_EID_month_STATUSTableAdapter();

    DS_SALARY.SALARY_SELECTDataTable SDT = new DS_SALARY.SALARY_SELECTDataTable();
    DS_SALARYTableAdapters.SALARY_SELECTTableAdapter SAdapter = new DS_SALARYTableAdapters.SALARY_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            ClsDT = ClsAdapter.SELECT();
            drpclass.DataSource = ClsDT;
            drpclass.DataTextField = "Class";
            drpclass.DataValueField = "Cid";
            drpclass.DataBind();
            drpclass.Items.Insert(0, "SELECT");
            txtyear.Text=System.DateTime.Now.Year.ToString();

        }
       
    }
    protected void btnselect_Click(object sender, EventArgs e)
    {
        EDT = EAdapter.Select_By_EID(Convert.ToInt32(drpemp.SelectedValue));
        lblbpay.Text = EDT.Rows[0]["BasicPay"].ToString();
        lblsalary.Text = EDT.Rows[0]["salary"].ToString();
        ViewState["eid"]=EDT.Rows[0]["eid"].ToString();
        ViewState["bpay"] = EDT.Rows[0]["BasicPay"].ToString();
        lblname.Text = EDT.Rows[0]["ename"].ToString();
        lblacno.Text = EDT.Rows[0]["bankacno"].ToString();

        ClsDT = ClsAdapter.SELECT_BY_CLASS(EDT.Rows[0]["class"].ToString());
        txttall.Text = ClsDT.Rows[0]["TravelAllowance"].ToString();
        txtmall.Text = ClsDT.Rows[0]["MedicalAllowance"].ToString();
        txtwall.Text = ClsDT.Rows[0]["WashingAllowance"].ToString();

       

        LSDT = LSAdapter.Select_Sum_EID_month(Convert.ToInt32(ViewState["eid"].ToString()), drpmonth.SelectedItem.Text);

      

            lblleave.Text = LSDT.Rows[0]["days"].ToString();

            if (lblleave.Text != "")
            {
                // lblleave.Text ="0";
                LSDT = LSAdapter.Select_sum_eid_moth_status(Convert.ToInt32(ViewState["eid"].ToString()), drpmonth.SelectedItem.Text, "Approve");
                lblleaveapprove.Text = LSDT.Rows[0]["days"].ToString();

                if (lblleaveapprove.Text != "")
                {

                    double salary = Convert.ToDouble(lblsalary.Text);
                    double onedaysalary = salary / 30;

                    int totlaleavededuction = Convert.ToInt32(lblleaveapprove.Text) * Convert.ToInt32( onedaysalary);
                    lblleavededuc.Text = totlaleavededuction.ToString();
                }
                else
                {
                    //lblleave.Text = "0";
                    lblleavededuc.Text = "0";
                    lblleaveapprove.Text = "0";
                
                }
            }
            else
            {
                lblleave.Text = "0";
                lblleavededuc.Text = "0";
                lblleaveapprove.Text = "0";
            }

        MultiView1.ActiveViewIndex = 0;
        txtda.Focus();

      //  LDT=LAdapter.Select_By_LID

       // lblbpay.Text = EDT.Rows[0]["BasicPay"].ToString();
        //lblbpay.Text = EDT.Rows[0]["BasicPay"].ToString();
    }
    protected void drpclass_SelectedIndexChanged(object sender, EventArgs e)
    {
        EDT = EAdapter.Select_For_Salary(drpclass.SelectedItem.Text, drpmonth.Text,Convert.ToInt32( txtyear.Text));
        drpemp.DataSource = EDT;
        drpemp.DataTextField = "Ename";
        drpemp.DataValueField = "EID";
        drpemp.DataBind();
        drpemp.Items.Insert(0, "SELECT");
    }
  

    protected void txtda_TextChanged(object sender, EventArgs e)
    {
        int da = Convert.ToInt32(txtda.Text);

        int tda = (Convert.ToInt32(ViewState["bpay"].ToString()) * da)/100;

        lblda.Text = tda.ToString();
        txthr.Focus();
    }
    protected void txthr_TextChanged(object sender, EventArgs e)
    {
        int hr = Convert.ToInt32(txthr.Text);

        int thr = (Convert.ToInt32(ViewState["bpay"].ToString()) * hr) / 100;

        lblhr.Text = thr.ToString();
        btngeneratesalary.Focus();
    }
    protected void btngeneratesalary_Click(object sender, EventArgs e)
    {

        double tdeducation = Convert.ToDouble(lblleavededuc.Text) + Convert.ToDouble(lblda.Text) + Convert.ToDouble(lblhr.Text);

        double tallowance = Convert.ToDouble(txtmall.Text) + Convert.ToDouble(txtwall.Text) + Convert.ToDouble(txttall.Text);

        double netsalary = (Convert.ToDouble(lblsalary.Text) + tallowance) - tdeducation;

        SAdapter.Insert(drpemp.SelectedItem.Text, lblacno.Text, drpclass.SelectedItem.Text, Convert.ToDouble(lblbpay.Text), Convert.ToDouble(lblsalary.Text), Convert.ToDouble(txttall.Text), Convert.ToDouble(txtmall.Text), Convert.ToDouble(txtwall.Text), Convert.ToInt32(lblleaveapprove.Text), Convert.ToDouble(lblleavededuc.Text), Convert.ToDouble(lblda.Text), Convert.ToDouble(lblhr.Text), tdeducation, tallowance, netsalary, drpmonth.SelectedItem.Text, Convert.ToInt32(txtyear.Text));

        txtda.Text = "";
        txthr.Text = "";
        lblda.Text = "";
        lblhr.Text = "";
         
        MultiView1.ActiveViewIndex = -1;
       // lbl.Text = "Salary Generated Successfully";

        drpclass.Focus();
        EDT = EAdapter.Select_For_Salary(drpclass.SelectedItem.Text, drpmonth.Text, Convert.ToInt32(txtyear.Text));
        drpemp.DataSource = EDT;
        drpemp.DataTextField = "Ename";
        drpemp.DataValueField = "EID";
        drpemp.DataBind();
        drpemp.Items.Insert(0, "SELECT");
    }
}