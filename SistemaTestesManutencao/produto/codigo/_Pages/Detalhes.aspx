<%@ Page Title="" Language="C#" MasterPageFile="~/produto/codigo/_Master/Site.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="SistemaTestesManutencao.produto.codigo._Pages.Detalhes" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/cssDetalhes.min.css" rel="stylesheet" />
    <link href="../_Geral/UserControls/cssErro.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <asp:PlaceHolder runat="server" ID="placeholder"></asp:PlaceHolder>
    <section id="sectionDetalhes">
        <section id="sectionTitle">
            <asp:Label runat="server" ID="lblNomeEsporte"></asp:Label>
        </section>
        <section id="sectionDescricao">
           <asp:Label runat="server" ID="lblDescricao"></asp:Label>
        </section>
        <section id="sectionComprar">
            <asp:Button runat="server" ID="btnComprar" OnClick="btnComprar_Click" CssClass="Button" Text="Comprar" />
        </section>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Javascript" runat="server">
</asp:Content>
