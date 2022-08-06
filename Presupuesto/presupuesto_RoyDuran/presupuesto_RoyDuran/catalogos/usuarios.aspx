<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="presupuesto_RoyDuran.catalogos.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Usuarios</h1>
    <div class="div-inicio">
        <div>
            Email:&nbsp;
            <asp:TextBox ID="txtMail" runat="server" Height="24px" Width="183px" required="true"></asp:TextBox><br />
            <br />
            ID Usuario:<asp:TextBox ID="txtIdpersona" runat="server" Height="25px"></asp:TextBox><br />
            <br />
            Tipo Usuario:<asp:DropDownList ID="drdTipoUsuario" runat="server" DataSourceID="SqlPrsupuesto" DataTextField="tipo_usuario" DataValueField="tipo_usuario" Height="25px" Width="155px">
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Regular</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Clave:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtClave" runat="server" Width="167px"></asp:TextBox><br />
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button class="btn-navbar" ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-navbar" ID="Button2" runat="server" Text="Actualizar" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn-navbar" ID="Button3" runat="server" Text="Borrar" OnClick="Button3_Click" />
        </div>
    </div>
    <div class="div-inicio">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlPrsupuesto" Height="142px" Width="778px">
            <Columns>
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="idusuario" HeaderText="idusuario" SortExpression="idusuario" />
                <asp:BoundField DataField="tipo_usuario" HeaderText="tipo_usuario" SortExpression="tipo_usuario" />
                <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlPrsupuesto" runat="server" ConnectionString="<%$ ConnectionStrings:presupuestoConnectionString %>" SelectCommand="SELECT * FROM [usuario]" DeleteCommand="delete usuario where email = @email " InsertCommand="insert into usuario values(@email,@idUsuario,@tipoUsuario,@clave)" UpdateCommand="update usuario set idusuario = @idusuario, tipo_usuario = @tipo_usuario, clave = @clave where email = @email">
            <DeleteParameters>
                <asp:ControlParameter ControlID="txtMail" Name="email" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtMail" Name="email" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtIdpersona" Name="idUsuario" PropertyName="Text" />
                <asp:ControlParameter ControlID="drdTipoUsuario" Name="tipoUsuario" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtClave" Name="clave" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="txtIdpersona" Name="idusuario" PropertyName="Text" />
                <asp:ControlParameter ControlID="drdTipoUsuario" Name="tipo_usuario" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtClave" Name="clave" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtMail" Name="email" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
