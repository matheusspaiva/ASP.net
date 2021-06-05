using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Multiplataforma
{
    public partial class Cartão : System.Web.UI.Page
    {
        Conexao conn = new Conexao();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            try
            {
                String pag = listPag.SelectedItem.Text;
                conn.Abrircon();
                conn.AdicionarCartao(txtnumCartao.Text, txtCodSeg.Text, txtValidade.Text, pag, txtBanco.Text, txtCPF.Text);
                conn.Fecharcon();
                lblMensagem.Text = "Cartão salvo";
            }
            catch
            {
                lblMensagem.Text = "Erro de conexão";
            }
        }
    }
}