<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Examen2RoyDuran.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-inicio">
        <fieldset class="fieldset">
            Nombre:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNombre" runat="server" required="true"></asp:TextBox><br />
            <br />
            Cedula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox><br />
            <br />
            Telefono:&nbsp;&nbsp;
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox><br />
            <br />
            Direccion:
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox><br />
            <br />
        </fieldset>
    </div>
</asp:Content>
