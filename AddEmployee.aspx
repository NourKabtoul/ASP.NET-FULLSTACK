<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 715px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD NEW EMPLOYEE</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1">
                <tr>
                    <td class="lbl">
                        Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="lbl">
                        Class : </td>
                    <td>
                        <asp:DropDownList ID="drpclass" runat="server" CssClass="txt" 
                            AutoPostBack="True" onselectedindexchanged="drpclass_SelectedIndexChanged">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>Class I 6th Pay</asp:ListItem>
                            <asp:ListItem>Class I 7th Pay</asp:ListItem>
                            <asp:ListItem>Class II 6th Pay</asp:ListItem>
                            <asp:ListItem>Class II 7th Pay</asp:ListItem>
                            <asp:ListItem>Class III 6th Pay</asp:ListItem>
                            <asp:ListItem>Class III 7th Pay</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="drpclass" ErrorMessage="**" ForeColor="Red" 
                            InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Address :
                    </td>
                    <td>
                        <asp:TextBox ID="txtadd" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtadd" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="lbl">
                        Basic Pay :
                    </td>
                    <td>
                        <asp:TextBox ID="txtbasicpay" runat="server" CssClass="txt" Enabled="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtbasicpay" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        City :
                    </td>
                    <td>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtcity" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="lbl">
                        Salary :
                    </td>
                    <td>
                        <asp:TextBox ID="txtsalary" runat="server" CssClass="txt" Enabled="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtsalary" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Pincode :
                    </td>
                    <td>
                        <asp:TextBox ID="txtpincode" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtpincode" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="lbl">
                        Bank Account :
                    </td>
                    <td>
                        <asp:TextBox ID="txtbankaccountno" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtbankaccountno" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Mobile :
                    </td>
                    <td>
                        <asp:TextBox ID="txtmoile" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtmoile" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="lbl">
                        Email :
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Degree :
                    </td>
                    <td>
                        <asp:DropDownList ID="drpdegree" runat="server" CssClass="txt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>12 Pass</asp:ListItem>
                            <asp:ListItem>Diploma</asp:ListItem>
                            <asp:ListItem>Graduate</asp:ListItem>
                            <asp:ListItem>PHD</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="drpdegree" ErrorMessage="**" ForeColor="Red" 
                            InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="lbl">
                        Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtpassword" ErrorMessage="**" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Designation :
                    </td>
                    <td>
                        <asp:DropDownList ID="drpdesignation" runat="server" CssClass="txt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>Peon</asp:ListItem>
                            <asp:ListItem>Driver</asp:ListItem>
                            <asp:ListItem>Lecturer</asp:ListItem>
                            <asp:ListItem>Professor</asp:ListItem>
                            <asp:ListItem>Ass. Professor</asp:ListItem>
                            <asp:ListItem>Principal</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="drpdesignation" ErrorMessage="**" ForeColor="Red" 
                            InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="lbl">
                        Confirm-Pass :
                    </td>
                    <td>
                        <asp:TextBox ID="txtconfpass" runat="server" CssClass="txt"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtpassword" ControlToValidate="txtconfpass" 
                            ErrorMessage="not same" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Branch :
                    </td>
                    <td>
                        <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>COMPUTER</asp:ListItem>
                            <asp:ListItem>CIVIL</asp:ListItem>
                            <asp:ListItem>EC</asp:ListItem>
                            <asp:ListItem>ELECTRICAL</asp:ListItem>
                            <asp:ListItem>MECHANICAL</asp:ListItem>
                          
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="drpbranch" ErrorMessage="**" ForeColor="Red" 
                            InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnaddempl" runat="server" CssClass="btn" Text="ADD Empoyee" 
                            Width="120px" onclick="btnaddempl_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
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

