<%@ Page Title="" Language="C#" MasterPageFile="~/catalogos/regular.Master" AutoEventWireup="true" CodeBehind="ingresos.aspx.cs" Inherits="presupuesto_RoyDuran.catalogos.ingresos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ingresos y Gastos</h1>
    <div class="div-inicio">Tipo:
        <br />
        <br />
        Descripcion:<br />
        <br />
        Fecha:<br />
        <br />
        Monto:<br />
        <br />

                <asp:Button class="btn-navbar" ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-navbar" ID="Button2" runat="server" Text="Actualizar" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-navbar" ID="Button3" runat="server" Text="Borrar" OnClick="Button3_Click" />
    </div>
    <div class="div-inicio"></div>
</asp:Content>
