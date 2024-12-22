<%@ Page Title="" Language="C#" MasterPageFile="~/rpt.master" AutoEventWireup="true" CodeFile="YReport.aspx.cs" Inherits="YReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

       
        .style1
        {
            width: 749px;
        }
        .style2
        {
            width: 69px;
        }
       
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                <table class="style1">
                    <tr>
                        <td class="style2">
                            <asp:Button ID="Button1" runat="server" BorderColor="White" BorderStyle="Solid" 
                                BorderWidth="2px" CssClass="btn" Height="30px" 
                                PostBackUrl="~/YearReport.aspx" Text="BACK" Width="80px" />
                        </td>
                        <td>
            My Salary Detail</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="true" />
            </td>
        </tr>
    </table>
</asp:Content>

