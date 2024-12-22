<%@ Page Title="" Language="C#" MasterPageFile="~/Emp/Employee.master" AutoEventWireup="true" CodeFile="ChangePass.aspx.cs" Inherits="Emp_ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style1
    {
        width: 402px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
            Change Password Form</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                        Current Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtcurrentpass" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtcurrentpass" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                        New Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtnewpass" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtnewpass" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                        Confirm-Pass :
                        </td>
                        <td>
                            <asp:TextBox ID="txtconfmpass" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtnewpass" ControlToValidate="txtconfmpass" 
                            ErrorMessage="not same" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Button ID="Button8" runat="server" CssClass="btn" onclick="Button8_Click" 
                            Text="Change Password" Width="140px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server"></asp:Label>
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
</asp:Content>

