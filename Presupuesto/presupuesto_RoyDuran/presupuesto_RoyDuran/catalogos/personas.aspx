<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="personas.aspx.cs" Inherits="presupuesto_RoyDuran.catalogos.personas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            border-style: none;
            border-color: inherit;
            border-width: 1px;
            height: 417px;
            width: 70%;
            margin: 0 auto;
            padding: 10px;
            text-align: center;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Personas</h1>
    <div class="auto-style1">
        <div class="div-inicio">
            Cedula:<asp:TextBox ID="txtCedula" runat="server" required="true"></asp:TextBox>
            <br />
            <br />
            Nombre:<asp:TextBox ID="txtNombre" runat="server" required="true"></asp:TextBox>
            <br />
            <br />
            Apellido:<asp:TextBox ID="txtApellido1" runat="server" required="true"></asp:TextBox>
            <br />
            <br />
            Apellido:<asp:TextBox ID="txtApellido2" runat="server" required="true"></asp:TextBox>
            <br />
            <br />
            Direccion:<asp:TextBox ID="txtDireccion" runat="server" required="true"></asp:TextBox>
            <br />
            <br />
            Telefono:<asp:TextBox ID="txtTelefono" runat="server" required="true"></asp:TextBox>
            <br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button class="btn-navbar" ID="btnAgregar" runat="server" Text="Agregar" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-navbar" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-navbar" ID="btnBorrar" runat="server" Text="Borrar" OnClick="Button3_Click" />
        </div>
    </div>
    <div class="div-inicio">
        <asp:GridView ID="GridView1" runat="server" Height="173px" Width="576px"></asp:GridView>
        <asp:SqlDataSource ID="SqlPersonas" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>
