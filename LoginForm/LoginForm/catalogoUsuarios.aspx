﻿<%@ Page Title="" Language="C#" MasterPageFile="~/menuPrincipal.Master" AutoEventWireup="true" CodeBehind="catalogoUsuarios.aspx.cs" Inherits="LoginForm.inicio1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
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
            <asp:TextBox type="password" ID="txtClave" runat="server" Height="22px" Width="119px"></asp:TextBox><br />
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button class="btn" ID="btnIngresar" runat="server" Text="Ingresar" />
            &nbsp;<asp:Button class="btn" ID="btnBorrar" runat="server" Text="Borrar" />
            &nbsp;
                <asp:Button class="btn" ID="btnActualizar" runat="server" Text="Actualizar" />
            <br />
        </div>
        <br />
        <div class="div div-login">
            <br />
            <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlUPI" Height="256px" Width="93%">
                <Columns>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="clave" HeaderText="clave" SortExpression="clave" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlUPI" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString2 %>" SelectCommand="SELECT * FROM [usuario]"></asp:SqlDataSource>
            <br />
        </div>
        <br />
    </div>
</asp:Content>