<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="factura.aspx.cs" Inherits="Examen2RoyDuran.factura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <fieldset>
            <legend>Factura </legend>
            Codigo Factura&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Codigo Servicio <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            Mes;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Enero</asp:ListItem>
                <asp:ListItem>Febrero</asp:ListItem>
                <asp:ListItem>Marzo</asp:ListItem>
                <asp:ListItem>Abril</asp:ListItem>
                <asp:ListItem>Mayo</asp:ListItem>
                <asp:ListItem>Junio</asp:ListItem>
                <asp:ListItem>Julio</asp:ListItem>
                <asp:ListItem>Agosto</asp:ListItem>
                <asp:ListItem>Setiembre</asp:ListItem>
                <asp:ListItem>Octubre</asp:ListItem>
                <asp:ListItem>Noviembre</asp:ListItem>
                <asp:ListItem>Diciembre</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Monto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <br />
            Descuento&nbsp;  <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button Class="btn" ID="btnAgregar" runat="server" Text="Agregar" />
            <asp:Button Class="btn" ID="btnSalvar" runat="server" Text="Salvar" />
            <asp:Button Class="btn" ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" /><br /><br />
        </fieldset>
        <fieldset>
            <legend>Clienteeeeeeeeeeeeeeeegend>Cliente</legend>
            Nombre:&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="txtNombreCliente" runat="server"></asp:TextBox>
            <br />
            <br />
            Cedula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtCedulaCliente" runat="server"></asp:TextBox>
            <br />
            <br />
            Telefono:&nbsp;&nbsp; <asp:TextBox ID="txtTelefonoCliente" runat="server"></asp:TextBox>
            <br />
            <br />
            Direccion: <asp:TextBox ID="txtDireccionCliente" runat="server"></asp:TextBox>
            <br />
            <br />
        </fieldset>
        <fieldset>
            <legend>Facturacion</legend>

            <br />
            Monto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descuento&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subtotal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; IVA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Total&nbsp;&nbsp;&nbsp;
            <hr />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
        </fieldset>
    </div>
</asp:Content>
