<%@ Page Title="" Language="C#" MasterPageFile="~/Emp/Employee.master" AutoEventWireup="true" CodeFile="SalaryReport.aspx.cs" Inherits="Emp_SalaryReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
    {
        width: 525px;
    }
    .style2
    {
        width: 103px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2">
&nbsp;My Salary Report</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td class="lbl">
                            Year :
                        </td>
                        <td>
                            <asp:TextBox ID="txtyear" runat="server" CssClass="txt" Width="110px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtyear" ErrorMessage="!!" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td class="lbl">
                            Month :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpmonth" runat="server" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>ALL</asp:ListItem>
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
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="drpmonth" ErrorMessage="!!" ForeColor="Red" 
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Button ID="btnselect" runat="server" CssClass="btn" Text="SELECT" 
                                onclick="btnselect_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="lbl">
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
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" 
                    GridLines="Vertical" AutoGenerateColumns="False" Width="770px" 
                    onrowcommand="GridView1_RowCommand" BackColor="White" 
                    BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" ForeColor="#006600" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                    <Columns>
                    <asp:BoundField HeaderText="BasicPay" DataField="BasicPay" />
                    <asp:BoundField HeaderText="Salary" DataField="salary" />
                    <%--<asp:BoundField HeaderText="T_ALL" DataField="travellallowance" />
                    <asp:BoundField HeaderText="M_ALL" DataField="medicalallowance" />
                    <asp:BoundField HeaderText="W_ALL" DataField="washingallowance" />--%>
                   <%-- <asp:BoundField HeaderText="DA" DataField="da" />
                    <asp:BoundField HeaderText="HR" DataField="hr" />
                    <asp:BoundField HeaderText="Leave" DataField="leavededucation" />--%>
                    <asp:BoundField HeaderText="Deducaton" DataField="deducation" />
                    <asp:BoundField HeaderText="Allowance" DataField="allowance" />
                    <asp:BoundField HeaderText="NetPay" DataField="NetPAy" />
                    <asp:TemplateField HeaderText="View Receipt">
                    <ItemTemplate>
                    <asp:LinkButton runat="server" Text="View Receipt" ForeColor="Red" CommandArgument='<%#Eval("SID") %>'></asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

