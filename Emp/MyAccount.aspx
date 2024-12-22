<%@ Page Title="" Language="C#" MasterPageFile="~/Emp/Employee.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="Emp_MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                My Account Summary</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
               <div id="acc">
                   <table class="style1">
                       <tr>
                           <td class="acc">
                               Total Leave</td>
                       </tr>
                       <tr>
                           <td class="acc1">
                               <asp:Label ID="lblleave" runat="server" Text="0"></asp:Label>
                           </td>
                       </tr>
                   </table>
                </div>  <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Approved Leave</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblaleave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div> <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Canceled Leave</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblcleave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Last Salary</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblsalary" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div><div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Allowance</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblasal" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div><div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Deduction</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lbldsal" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div> </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

