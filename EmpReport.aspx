<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EmpReport.aspx.cs" Inherits="EmpReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 574px;
            height: 22px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Employee Report</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Select Branch :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt" 
                                onselectedindexchanged="drpbranch_SelectedIndexChanged" 
                                AutoPostBack="True">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>COMPUTER</asp:ListItem>
                            <asp:ListItem>CIVIL</asp:ListItem>
                            <asp:ListItem>EC</asp:ListItem>
                            <asp:ListItem>ELECTRICAL</asp:ListItem>
                            <asp:ListItem>MECHANICAL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Select Employee :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpemployee" runat="server" CssClass="txt">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnsearch" runat="server" CssClass="btn" Text="Search" 
                                onclick="btnsearch_Click" />
                                    <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style2">
                            <tr>
                                <td bgcolor="#FFCCFF" style="color: #008000" class="style3">
                                    <strong>Employee Detail </strong>
                                </td>
                            </tr>
                            <tr>
                                <td bgcolor="#FFFFCC">
                                    <table align="center" class="style1">
                                        <tr>
                                            <td class="lbl">
                                                Name :
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblname" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">
                                                Class :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblclass" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Address :
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lbladd" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">
                                                Basic Pay :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblbasicpay" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                City :
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblcity" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">
                                                Salary :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblsalary" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Pincode :
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblpincode" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">
                                                Bank Account :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblbankaco" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Mobile :
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblmobile" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">
                                                Email :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblemail" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Degree :
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lbldegree" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">
                                                Password :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblpass" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Designation :
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lbldesign" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td class="lbl">
                                                Status :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblstatus" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Branch :
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lblbranch" runat="server" CssClass="lbl"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnstatus" runat="server" CssClass="btn" 
                                                    onclick="btnstatus_Click" Text="ACTIVE" Width="120px" />
                                            </td>
                                            <td>
                                                <asp:Button ID="btndelemp" runat="server" CssClass="btn" 
                                                    onclick="btndelemp_Click" Text="DELETE" Width="120px" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        </table>
</asp:Content>

