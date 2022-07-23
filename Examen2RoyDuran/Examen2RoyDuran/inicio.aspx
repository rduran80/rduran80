<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Examen2RoyDuran.inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-inicio">
        Nombre:&nbsp;&nbsp;&nbsp; <asp:TextBox id="txtNombre" runat="server"></asp:TextBox><br /><br />
        Cedula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox id="txtCedula" runat="server"></asp:TextBox><br /><br />
        Telefono:&nbsp;&nbsp; <asp:TextBox id="txtTelefono" runat="server"></asp:TextBox><br /><br />
        Direccion: <asp:TextBox id="txtDireccion" runat="server"></asp:TextBox><br /><br />
    </div>
</asp:Content>
