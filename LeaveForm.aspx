<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LeaveForm.aspx.cs" Inherits="LeaveForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Manage Leave</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button8" runat="server" CssClass="btn" onclick="Button8_Click" 
                Text="New Leave" Width="120px" />
&nbsp;
            <asp:Button ID="Button9" runat="server" CssClass="btn" Text="Approve Leave" 
                Width="120px" onclick="Button9_Click" />
&nbsp;
            <asp:Button ID="Button10" runat="server" CssClass="btn" Text="Cancle Leave" 
                Width="120px" onclick="Button10_Click" />
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
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                <asp:Label ID="lbltitle" runat="server" Text="Label"></asp:Label>
                                &nbsp;Leave Report</td>
                        </tr>
                        <tr>
                            <td>
                                Select Employee :
                                <asp:DropDownList ID="drpemployee" runat="server" CssClass="txt">
                                </asp:DropDownList>
                                <asp:Button ID="btnselect" runat="server" CssClass="btn" 
                                    onclick="btnselect_Click" Text="Select" />
                                &nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" GridLines="Vertical" Width="761px" 
                                    onrowcommand="GridView1_RowCommand" ForeColor="Black">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Fromdate" DataFormatString="{0:dd MMM yyyy}" 
                                            HeaderText="From Date">
                                        <ItemStyle Width="120px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="todate" DataFormatString="{0:dd MMM yyyy}" 
                                            HeaderText="To Date">
                                        <ItemStyle Width="120px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="days" HeaderText="Days">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle Width="50px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="reason" HeaderText="Reason">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        </asp:BoundField>
                                       <asp:TemplateField HeaderText="Approve">
                                       <ItemTemplate >
                                       <asp:LinkButton runat="server" Text="Approve" ID="lnkapp" ForeColor="Green" CommandName="app" CommandArgument='<%#Eval("LID") %>'></asp:LinkButton>
                                       </ItemTemplate>
                                       </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Cancel">
                                       <ItemTemplate >
                                       <asp:LinkButton runat="server" Text="Cancel" ID="lnkrej" ForeColor="Red" CommandName="rej" CommandArgument='<%#Eval("LID") %>'></asp:LinkButton>
                                       </ItemTemplate>
                                       </asp:TemplateField>
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
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                Approve Leave Report</td>
                        </tr>
                        <tr>
                            <td>
                                Select Employee :
                                <asp:DropDownList ID="drpemployee0" runat="server" CssClass="txt">
                                </asp:DropDownList>
                                <asp:Button ID="btnselect0" runat="server" CssClass="btn" 
                                    onclick="btnselect0_Click" Text="Select" />
                                &nbsp;<asp:Label ID="lblmsg0" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" GridLines="Vertical" onrowcommand="GridView2_RowCommand" 
                                    Width="761px" ForeColor="Black">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Fromdate" DataFormatString="{0:dd MMM yyyy}" 
                                            HeaderText="From Date">
                                        <ItemStyle Width="120px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="todate" DataFormatString="{0:dd MMM yyyy}" 
                                            HeaderText="To Date">
                                        <ItemStyle Width="120px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="days" HeaderText="Days">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle Width="50px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="reason" HeaderText="Reason">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        </asp:BoundField>
                                       
                                        <asp:TemplateField HeaderText="Delete">
                                        <ItemStyle Width="30px" />
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkdel" runat="server" CommandArgument='<%#Eval("LID") %>' 
                                                    CommandName="rej" ForeColor="Red" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table class="tbl">
                        <tr>
                            <td class="tblhead">
                                Cancel Leave Report</td>
                        </tr>
                        <tr>
                            <td>
                                Select Employee :
                                <asp:DropDownList ID="drpemployee1" runat="server" CssClass="txt">
                                </asp:DropDownList>
                                <asp:Button ID="btnselect1" runat="server" CssClass="btn" 
                                    onclick="btnselect1_Click" Text="Select" />
                                &nbsp;<asp:Label ID="lblmsg1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" GridLines="Vertical" onrowcommand="GridView3_RowCommand" 
                                    Width="761px" ForeColor="Black">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Fromdate" DataFormatString="{0:dd MMM yyyy}" 
                                            HeaderText="From Date">
                                        <ItemStyle Width="120px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="todate" DataFormatString="{0:dd MMM yyyy}" 
                                            HeaderText="To Date">
                                        <ItemStyle Width="120px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="days" HeaderText="Days">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle Width="50px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="reason" HeaderText="Reason">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemStyle Width="30px" />
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkdel0" runat="server" CommandArgument='<%#Eval("LID") %>' 
                                                    CommandName="rej" ForeColor="Red" Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
    </table>
</asp:Content>

