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
            &nbsp;<asp:TextBox ID="txtFechIng" placeholder="yyyy-mm-dd" runat="server" Width="119px" Height="22px" TextMode="Date"></asp:TextBox><br />
            <br />
            <asp:Button class="btn" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
            &nbsp;<asp:Button class="btn" ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
            &nbsp;
                <asp:Button class="btn" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
            &nbsp;&nbsp;
            <asp:Button class="btn" ID="btnBuscar" runat="server" Text="Buscar" OnClick="Button1_Click" />
            <br />
        &nbsp;</div>
        <br />
    </div>
    <br />
    <br />
    <div class="div div-user">
        <asp:GridView CssClass="grid-item" ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" DeleteCommand="DELETE FROM usuario WHERE (codigo = @codigo)" InsertCommand="insert into articulos values(@descripcion,@cantidad,@precio,@fechaIngreso)" SelectCommand="SELECT * FROM [articulos]" UpdateCommand="update articulos set descripcion =@descripcion, cantidad = @cantidad, precio = @precio, fechaIngreso = @fechaIng where codigo = @codigo">
            <DeleteParameters>
                <asp:ControlParameter ControlID="txtCodigo" Name="codigo" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtDescripcion" Name="descripcion" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCantidad" Name="cantidad" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPrecio" Name="precio" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtFechIng" Name="fechaIngreso" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtDescripcion" Name="descripcion" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCantidad" Name="cantidad" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtPrecio" Name="precio" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtFechIng" Name="fechaIng" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCodigo" Name="codigo" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <br />
</asp:Content>
