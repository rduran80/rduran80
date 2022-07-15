﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="LoginForm.css.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
	<link rel="stylesheet" type="text/css" href="css/style.css"/>

</head>
<body>
    <form id="form1" runat="server">
        <h1>Sistema de control</h1>
            <div class="div div-login">
            <h1>Login</h1>
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox><br />
                <br />
            <asp:Label  ID="Label2" runat="server" Text="Clave"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox type="password" ID="txtClave" runat="server"></asp:TextBox><br />
                <asp:Label  ID="lblError" runat="server" Text=""></asp:Label>
                <br />
                <asp:Button class="btn" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click"/>
            </div>
            
    </form>
    <footer>Desarrollo Web Profesional &copy soporte@dewep.co.cr</footer>
</body>
</html>