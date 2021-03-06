﻿using PersistLayer.DAL;
using PersistLayer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaTestesManutencao.produto.codigo._Pages
{
    public partial class Login : System.Web.UI.Page
    {
        SistemaTestesManutencao.produto.codigo._Geral.UserControls.UserErro msgErro;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception ex)
            {
                msgErro = (SistemaTestesManutencao.produto.codigo._Geral.UserControls.UserErro)LoadControl("../_Geral/UserControls/UserErro.ascx");
                msgErro.Text = ex.Message;
                placeholder.Controls.Add(msgErro);
            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtEmail.Text.Equals(""))
                    throw new ApplicationException("O campo EMAIL é obrigatório!");

                if (txtSenha.Text.Equals(""))
                    throw new ApplicationException("O campo SENHA é obrigatório!");

                Usuario user = new Usuario();
                user = new UsuarioDAL().Buscar(txtEmail.Text, Util.Criptografia.EncryptMd5(txtSenha.Text));

                if (user == null)
                    throw new ApplicationException("Combinação EMAIL/SENHA não encontrados!");
                else
                {
                    Util.Cookies.CreateCookie("Usuario", Util.Criptografia.Encriptar(SistemaTestesManutencao.produto.codigo._Geral.CRIPTO.CHAVE, SistemaTestesManutencao.produto.codigo._Geral.CRIPTO.VETOR, user.ID.ToString()), 60, Response);
                    Response.Redirect("Home.aspx", false);
                }
            }
            catch (Exception ex)
            {
                msgErro = (SistemaTestesManutencao.produto.codigo._Geral.UserControls.UserErro)LoadControl("../_Geral/UserControls/UserErro.ascx");
                msgErro.Text = ex.Message;
                placeholder.Controls.Add(msgErro);
            }
        }

        protected void lnkCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Cadastro.aspx");
            }
            catch (Exception ex)
            {
                msgErro = (SistemaTestesManutencao.produto.codigo._Geral.UserControls.UserErro)LoadControl("../_Geral/UserControls/UserErro.ascx");
                msgErro.Text = ex.Message;
                placeholder.Controls.Add(msgErro);
            }
        }
    }
}