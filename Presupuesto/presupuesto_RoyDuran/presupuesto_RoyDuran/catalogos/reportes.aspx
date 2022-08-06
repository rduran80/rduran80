<%@ Page Title="" Language="C#" MasterPageFile="~/catalogos/regular.Master" AutoEventWireup="true" CodeBehind="reportes.aspx.cs" Inherits="presupuesto_RoyDuran.catalogos.reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Reportes</h1>
    <div class="div-inicio">
        Tipo De Reporte:<asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="Descripcion">
            <asp:ListItem>Año</asp:ListItem>
            <asp:ListItem>Ingresos</asp:ListItem>
            <asp:ListItem>Gastos</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:presupuestoConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [transacion]"></asp:SqlDataSource>
    </div>
    <div class="div-inicio">

    </div>
</asp:Content>
