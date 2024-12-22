<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YearReport.aspx.cs" Inherits="YearReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead" colspan="2">
&nbsp;Salary Report</td>
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
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                        &nbsp;</td>
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
                        <td>
                        &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" 
                    GridLines="Vertical" AutoGenerateColumns="False" Width="759px" 
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
                        <asp:BoundField HeaderText="Name" DataField="Ename" />
                      
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
                        <asp:TemplateField HeaderText="View Detail">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="View Detail" ForeColor="Red" CommandArgument='<%#Eval("BankAcNo") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

