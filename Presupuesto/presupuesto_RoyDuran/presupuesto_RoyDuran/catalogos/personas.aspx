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
            Nombre:<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <br />
            <br />
            Apellido:<asp:TextBox ID="txtApellido1" runat="server"></asp:TextBox>
            <br />
            <br />
            Apellido:<asp:TextBox ID="txtApellido2" runat="server"></asp:TextBox>
            <br />
            <br />
            Direccion:<asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            <br />
            <br />
            Telefono:<asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button class="btn-navbar" ID="btnAgregar" runat="server" Text="Agregar" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-navbar" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-navbar" ID="btnBorrar" runat="server" Text="Borrar" OnClick="Button3_Click" />
        </div>
    </div>
    <div class="div-inicio">
        <asp:GridView ID="GridView1" runat="server" Height="173px" Width="576px" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlPersonas">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido1" HeaderText="Apellido1" SortExpression="Apellido1" />
                <asp:BoundField DataField="Apellido2" HeaderText="Apellido2" SortExpression="Apellido2" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlPersonas" runat="server" ConnectionString="<%$ ConnectionStrings:presupuestoConnectionString %>" DeleteCommand="delete persona where Cedula =@Cedula" InsertCommand="insert into persona values(@Cedula,@Nombre,@Apellido1,@Apellido2,@Direccion,@Telefono)" SelectCommand="SELECT * FROM [persona]" UpdateCommand="update persona set Nombre=@Nombre,Apellido1=@Apellido1,Apellido2=@Apellido2,Direccion=@Direccion,Telefono=@Telefono where Cedula =@Cedula">
            <DeleteParameters>
                <asp:ControlParameter ControlID="txtCedula" Name="Cedula" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtCedula" Name="Cedula" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtNombre" Name="Nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtApellido1" Name="Apellido1" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtApellido2" Name="Apellido2" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDireccion" Name="Direccion" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTelefono" Name="Telefono" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtNombre" Name="Nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtApellido1" Name="Apellido1" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtApellido2" Name="Apellido2" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtDireccion" Name="Direccion" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtTelefono" Name="Telefono" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtCedula" Name="Cedula" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
