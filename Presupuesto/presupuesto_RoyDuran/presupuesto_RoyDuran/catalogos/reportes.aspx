<%@ Page Title="" Language="C#" MasterPageFile="~/catalogos/regular.Master" AutoEventWireup="true" CodeBehind="reportes.aspx.cs" Inherits="presupuesto_RoyDuran.catalogos.reportes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 1px;
            height: 51px;
            width: 50%;
            margin: 0 auto;
            padding: 10px;
            text-align: center;
            color: white;
        }
        .auto-style2 {
            margin-right: 0px;
        }
        .auto-style3 {
            border-style: none;
            border-color: inherit;
            border-width: 1px;
            height: 300px;
            width: 63%;
            margin: 0 auto;
            padding: 10px;
            text-align: center;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Reportes</h1>
    <div class="auto-style1">
        Tipo De Reporte:<asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="Descripcion">
            <asp:ListItem>Año</asp:ListItem>
            <asp:ListItem>Mes</asp:ListItem>
            <asp:ListItem>Ingresos</asp:ListItem>
            <asp:ListItem>Gastos</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:presupuestoConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [transacion]"></asp:SqlDataSource>
    </div>
    <div class="auto-style3">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="276px" Width="271px">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="idTipoTransaccion" HeaderText="idTipoTransaccion" SortExpression="idTipoTransaccion" />
                <asp:BoundField DataField="emailTransaccion" HeaderText="emailTransaccion" SortExpression="emailTransaccion" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:presupuestoConnectionString %>" SelectCommand="SELECT * FROM [transacion]"></asp:SqlDataSource>

    </div>
</asp:Content>
