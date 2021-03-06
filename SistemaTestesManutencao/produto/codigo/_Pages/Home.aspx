﻿<%@ Page Title="" Language="C#" MasterPageFile="~/produto/codigo/_Master/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SistemaTestesManutencao.produto.codigo._Pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style/cssHome.min.css" rel="stylesheet" />
    <link href="../_Geral/UserControls/cssErro.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
    <section id="sectionHome">
        <asp:PlaceHolder runat="server" ID="placeholder"></asp:PlaceHolder>

        <section id="sectionDados">
            <asp:Repeater runat="server" ID="rptEventos">
                <ItemTemplate>
                    <section class="sectionTitle">
                        <%# Eval("Modalidade") %>
                    </section>
                    <section id="sectionEvento">
                        <section id="sectionTitleEvento">
                            <div class="divTitle">
                            </div>
                            <div class="divTitle">
                                Local
                            </div>
                            <div class="divTitle">
                                Data
                            </div>
                            <div class="divTitle">
                                Horário
                            </div>
                        </section>
                        <section id="sectionDadosEvento">
                            <div class="divDados">
                                <%# Eval("Evento") %>
                            </div>
                            <div class="divDados">
                                <%# Eval("Local") %>
                            </div>
                            <div class="divDados">
                                <%# Eval("Data") %>
                            </div>
                            <div class="divDados">
                                <%# Eval("Horario") %>
                            </div>
                            <div class="divDados">
                                <asp:LinkButton runat="server" ID="lnkVerDetahes" Text="Ver" CommandArgument='<%# Eval("ID") %>' CssClass="Link" OnCommand="lnkVerDetahes_Command"></asp:LinkButton>
                            </div>
                        </section>
                    </section>
                </ItemTemplate>
            </asp:Repeater>
        </section>
    </section>
</asp:Content>