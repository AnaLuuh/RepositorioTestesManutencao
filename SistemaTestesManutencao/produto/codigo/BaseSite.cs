using PersistLayer.DAL;
using PersistLayer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaTestesManutencao.produto.codigo
{
    public class BaseSite : System.Web.UI.Page
    {
        public Usuario Usu
        {
            get
            {
                string recCli;
                recCli = Util.Cookies.RecuperaCookie("Usuario", Request);

                if (!recCli.Equals(string.Empty))
                {
                    int cliID = Convert.ToInt32(Util.Criptografia.Decriptar(SistemaTestesManutencao.produto.codigo._Geral.CRIPTO.CHAVE, SistemaTestesManutencao.produto.codigo._Geral.CRIPTO.VETOR, recCli.ToString()));
                    return new UsuarioDAL().Obter(cliID);
                }

                return null;
            }
        }
    }
}