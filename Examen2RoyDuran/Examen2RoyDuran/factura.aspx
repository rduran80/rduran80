<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="factura.aspx.cs" Inherits="Examen2RoyDuran.factura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <fieldset>
            <legend>Factura </legend>
            Codigo Factura&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="lblFactura" runat="server" Text="" ></asp:Label>
            <br />
            <br />
            Codigo Servicio&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblServicio" runat="server" Text=""></asp:Label>
            <br />
            <br />
            Mes;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="drdMes" runat="server">
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
            &nbsp;<asp:Label ID="lblMes" runat="server" Visible="False"></asp:Label>
            <br />
            <br />
            Monto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
            <br />
            <br />
            Descuento&nbsp;  <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button Class="btn" ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <asp:Button Class="btn" ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button Class="btn" ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" /><br /><br />
        </fieldset>
        <fieldset>
            <legend>Cliente</legend>
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
            <asp:TextBox ID="txtMonto2" runat="server"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="txtDesc2" runat="server"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="txtSubtotal" runat="server"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="txtIva" runat="server"></asp:TextBox>
            &nbsp;
            <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EXAMEN2_DBConnectionString %>" SelectCommand="SELECT * FROM [Cliente]"></asp:SqlDataSource>
            <br />
        </fieldset>
    </div>
</asp:Content>
