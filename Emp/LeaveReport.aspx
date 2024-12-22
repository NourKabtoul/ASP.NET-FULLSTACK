<%@ Page Title="" Language="C#" MasterPageFile="~/Emp/Employee.master" AutoEventWireup="true" CodeFile="LeaveReport.aspx.cs" Inherits="Emp_LeaveReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Leave Report</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnpending" runat="server" CssClass="btn" Text="Pending Leave" 
                    Width="150px" onclick="btnpending_Click" />
&nbsp;<asp:Button ID="btnapprove" runat="server" CssClass="btn" Text="Aprove Leave" 
                    Width="150px" onclick="btnapprove_Click" />
&nbsp;<asp:Button ID="btncancel" runat="server" CssClass="btn" Text=" Cancel Leave" 
                    Width="150px" onclick="btncancel_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" CssClass="lbl"></asp:Label>
            </td>
        </tr>
        <tr>
            <td valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" GridLines="Vertical" Width="761px" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                <Columns>
                <asp:BoundField HeaderText="From Date" DataField="Fromdate" 
                        DataFormatString = "{0:dd MMM yyyy}" >
                    <ItemStyle Width="120px" />
                    </asp:BoundField>
                <asp:BoundField HeaderText="To Date" DataField="todate" 
                        DataFormatString = "{0:dd MMM yyyy}" >
                    <ItemStyle Width="120px" />
                    </asp:BoundField>
                <asp:BoundField HeaderText="Days" DataField="days"  >
                    <HeaderStyle HorizontalAlign="Left" />
                    <ItemStyle Width="50px" />
                    </asp:BoundField>
                <asp:BoundField HeaderText="Reason" DataField="reason" >
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                <asp:BoundField HeaderText="Status" DataField="status" >
                    <ItemStyle Width="90px" />
                    </asp:BoundField>
                </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#FFCCFF" Font-Bold="True" ForeColor="#006600" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

