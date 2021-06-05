using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Multiplataforma
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //
        protected void btnAcessar_Click(object sender, EventArgs e)
        {  
            if(String.IsNullOrEmpty(txtCodfun.Text) || String.IsNullOrEmpty(txtSenha.Text)) //Verifica se os texts estão preenchidos
            {
                lblErro.Text = "Informe os dados!!!";
            }
            else
            {
                try
                {
                    String senhaBD;
                    Conexao con = new Conexao();
                    con.Abrircon();
                    senhaBD = con.RetornarSenha(txtCodfun.Text);
                    con.Fecharcon();

                    if (senhaBD == txtSenha.Text) // verifica se o codigo foi encontrado e a senha é o mesmo do banco de dados
                    {
                        Server.Transfer("Compras.aspx");
                    }
                    else if (senhaBD == "Não encontrou") //verifica se o codigo do funcionario foi encontrado
                    {
                        lblErro.Text = "Funcionario não encontrado";
                    }
                    else //esse caso verifica se trouxe senha do banco de dados, mas não foi igual ao digitado
                    {
                        lblErro.Text = "Senha incorreta";
                    }
                }
                catch
                {
                    lblErro.Text = "Erro de conexão";
                }
            }
            
        }
    }
}