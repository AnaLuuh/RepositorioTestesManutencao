﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaTestesManutencao.produto.codigo._Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="../style/cssLogin.min.css" rel="stylesheet" />
    <link href="../_Geral/UserControls/cssErro.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:PlaceHolder runat="server" ID="placeholder"></asp:PlaceHolder>
        <asp:ScriptManager runat="server" ID="script" EnablePageMethods="true"></asp:ScriptManager>
        <section id="sectionPage">
            <section id="sectionHeader">
                <section id="sectionLogo"></section>
            </section>
            <section id="sectionDetail"></section>
            <section id="sectionCampos">
                <div class="divTitle">
                    Login
                </div>
                <div class="divTexto">
                    Email
                </div>
                <div class="divControl">
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="TextBox"></asp:TextBox>
                </div>
                <div class="divTexto">
                    Senha
                </div>
                <div class="divControl">
                    <asp:TextBox runat="server" ID="txtSenha" CssClass="TextBox" TextMode="Password"></asp:TextBox>
                </div>
                <div class="divControl">
                    <asp:Button runat="server" ID="btnEntrar" CssClass="Button" OnClick="btnEntrar_Click" Text="Entrar" />
                    <asp:LinkButton runat="server" ID="lnkCadastrar" CssClass="Link" Text="Cadastrar" OnClick="lnkCadastrar_Click"></asp:LinkButton>                   
                </div>
            </section>
        </section>
    </form>
</body>
</html>
