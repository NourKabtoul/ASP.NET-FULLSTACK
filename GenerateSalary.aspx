<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GenerateSalary.aspx.cs" Inherits="GenerateSalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 699px;
    }
    .style2
    {
        width: 103px;
    }
    .style3
    {
        width: 702px;
    }
    .style4
    {
        height: 32px;
    }
        .style6
        {
            text-align: right;
            color: Green;
            width: 217px;
        }
        .style7
        {
            width: 217px;
        }
        .style9
        {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Generate Salary</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="lbl">
                            Month :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpmonth" runat="server" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="drpmonth" ErrorMessage="!!" ForeColor="Red" 
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="lbl">
                            Current Year :
                        </td>
                        <td>
                            <asp:TextBox ID="txtyear" runat="server" CssClass="txt" Width="110px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtyear" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Select Class :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpclass" runat="server" CssClass="txt" 
                                AutoPostBack="True" onselectedindexchanged="drpclass_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="drpclass" ErrorMessage="!!" ForeColor="Red" 
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="lbl">
                            Select Employee :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpemp" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="drpemp" ErrorMessage="!!" ForeColor="Red" 
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Button ID="btnselect" runat="server" CssClass="btn" Text="SELECT" 
                                onclick="btnselect_Click" />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" ForeColor="#006600"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table width="100%">
                            <tr>
                                <td bgcolor="#FFCCFF" class="style4" style="font-weight: 700">
                                    Employee Name :
                                    <asp:Label ID="lblname" runat="server"></asp:Label>
                                    , Account No :
                                    <asp:Label ID="lblacno" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFCC">
                                    <table class="style3">
                                        <tr>
                                            <td class="style6">
                                                Basic Pay :</td>
                                            <td class="style9">
                                                <asp:Label ID="lblbpay" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">
                                                Salary :
                                            </td>
                                            <td class="style9">
                                                <asp:Label ID="lblsalary" runat="server"></asp:Label>
                                            </td>
                                            <td class="lbl">
                                                TravelAllowance : </td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txttall" runat="server" CssClass="txt" Width="70px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">
                                                Total Leave :</td>
                                            <td class="style9">
                                                <asp:Label ID="lblleave" runat="server">0</asp:Label>
                                            </td>
                                            <td class="lbl">
                                                MedicalAllowance : </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtmall" runat="server" CssClass="txt" Width="70px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style6">
                                                Approve Leave :
                                            </td>
                                            <td class="style9">
                                                <asp:Label ID="lblleaveapprove" runat="server">0</asp:Label>
                                            </td>
                                            <td class="lbl">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">
                                                Leave Deduction :
                                            </td>
                                            <td class="style9">
                                                <asp:Label ID="lblleavededuc" runat="server">0</asp:Label>
                                            </td>
                                            <td class="lbl">
                                                WashingAllowance : </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtwall" runat="server" CssClass="txt" Width="70px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style7">
                                                &nbsp;</td>
                                            <td class="style9">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">
                                                DA :
                                            </td>
                                            <td class="style9">
                                                <asp:TextBox ID="txtda" runat="server" CssClass="txt" Width="50px" 
                                                    AutoPostBack="True" ontextchanged="txtda_TextChanged"></asp:TextBox>
                                                %&nbsp;
                                                <asp:Label ID="lblda" runat="server"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style6">
                                                HR :
                                            </td>
                                            <td class="style9">
                                                <asp:TextBox ID="txthr" runat="server" CssClass="txt" Width="50px" 
                                                    AutoPostBack="True" ontextchanged="txthr_TextChanged"></asp:TextBox>
                                                %&nbsp;
                                                <asp:Label ID="lblhr" runat="server"></asp:Label>
                                            </td>
                                            <td colspan="3">
                                                <asp:Button ID="btngeneratesalary" runat="server" CssClass="btn" Text="Generate Salary" 
                                                    Width="160px" Height="40px" onclick="btngeneratesalary_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        </table>
</asp:Content>

