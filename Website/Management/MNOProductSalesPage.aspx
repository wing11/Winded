<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MNOProductSalesPage.aspx.cs" Inherits="Management_MNOProductSalesPage" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>MNO Report Viewer Sample</h3>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Reports\MNOProductSales.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="NorthwindProductSalesDataSource" Name="ProductSaleDataSet" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="NorthwindProductSalesDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetProductSaleSummaries" TypeName="NorthWindSystem.BLL.NorthwindManager"></asp:ObjectDataSource>
</asp:Content>

