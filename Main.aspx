<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

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
                Welcome to payroll system</td>
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
                               Employee</td>
                       </tr>
                       <tr>
                           <td class="acc1">
                               <asp:Label ID="lblemp" runat="server" Text="0"></asp:Label>
                           </td>
                       </tr>
                   </table>
                </div>  <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Active</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblaemp" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div> <div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Deactive</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lbldemp" runat="server" Text="0"></asp:Label>
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
                                New Leave</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblnleave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div><div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Approved</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblaleave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div><div id="acc">
                    <table class="style1">
                        <tr>
                            <td class="acc">
                                Rejected</td>
                        </tr>
                        <tr>
                            <td class="acc1">
                                <asp:Label ID="lblrleave" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

