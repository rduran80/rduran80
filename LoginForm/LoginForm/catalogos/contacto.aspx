<%@ Page Title="" Language="C#" MasterPageFile="~/menuPrincipal.Master" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="LoginForm.contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Formulario de contacto</h1>
        <div class="div div-login">
            <fieldset >
                <legend>Descripcion</legend>
                <asp:TextBox Class="txtbox" ID="TextBox1" runat="server" Height="159px" TextMode="MultiLine" Width="98%"></asp:TextBox>
                <br />
                <br />
                <asp:Button CssClass="btn" ID="Button2" runat="server" OnClick="Button2_Click" Text="Enviar" />
                <br />
                <br />
            </fieldset>
        </div>
        <br />
    </div>
</asp:Content>