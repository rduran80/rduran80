<%@ Page Title="" Language="C#" MasterPageFile="~/menuPrincipal.Master" AutoEventWireup="true" CodeBehind="catalogoUsuarios.aspx.cs" Inherits="LoginForm.inicio1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <h1>Catalogo Usuarios</h1>
        <div class="div div-login">
            <asp:Label ID="Label3" runat="server" Text="Codigo :"></asp:Label>
            &nbsp;<asp:TextBox ID="txtCodigo" runat="server" Width="119px" Height="22px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nombre :"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" Height="22px" Width="119px"></asp:TextBox><br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Clave :"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtClave" runat="server" Height="22px" Width="119px"></asp:TextBox><br /><br />
            <br />
            <asp:Button class="btn" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click"/>
            &nbsp;<asp:Button class="btn" ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
            &nbsp;
                <asp:Button class="btn" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
            <br />
        </div>
        <br />
        <div class="div div-user">
            <br />
            <asp:GridView Class="grid-item" ID="GridView1" runat="server" Width="90%" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" DeleteCommand="DELETE FROM usuario WHERE (codigo = @codigo)" InsertCommand="insert into usuario (nombre,clave) values (@nombre,@clave) " SelectCommand="SELECT * FROM [usuario]" UpdateCommand="update usuario set clave=@clave, nombre = @nombre where codigo = @codigo">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="txtCodigo" Name="codigo" PropertyName="Text" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtNombre" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtClave" Name="clave" PropertyName="Text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="txtClave" Name="clave" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtNombre" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtCodigo" Name="codigo" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <br />
    </div>
</asp:Content>
