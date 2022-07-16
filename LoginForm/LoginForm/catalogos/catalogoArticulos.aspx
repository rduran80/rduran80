<%@ Page Title="" Language="C#" MasterPageFile="~/menuPrincipal.Master" AutoEventWireup="true" CodeBehind="catalogoArticulos.aspx.cs" Inherits="LoginForm.catalogoArticulos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Catalogo Articulos</h1>
        <div class="div div-login">
            <asp:Label ID="Label3" runat="server" Text="Codigo :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp; <asp:TextBox ID="txtCodigo" runat="server" Width="119px" Height="22px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Descripcion :"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtDescripcion" runat="server" Height="22px" Width="119px"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Cantidad :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="txtCantidad" runat="server" Width="119px" Height="22px"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Precio :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="txtPrecio" runat="server" Width="119px" Height="22px"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Fecha ingreso :"></asp:Label>
            &nbsp;<asp:TextBox ID="txtFechIng" placeholder="yyyy-mm-dd" runat="server" Width="119px" Height="22px"></asp:TextBox><br />
            <br />
            <asp:Button class="btn" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
            &nbsp;<asp:Button class="btn" ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
            &nbsp;
                <asp:Button class="btn" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
            <br />
        </div>
        <br />
    </div>
    <br />
    <br />
    <div class="div div-user">
        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlMantenimiento" Height="207px" Width="99%">
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                <asp:BoundField DataField="fechaIngreso" HeaderText="fechaIngreso" SortExpression="fechaIngreso" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlMantenimiento" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" SelectCommand="SELECT * FROM [articulos]"></asp:SqlDataSource>
    </div>
    <br />
</asp:Content>
