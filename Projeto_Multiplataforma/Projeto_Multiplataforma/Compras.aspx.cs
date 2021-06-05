using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Multiplataforma
{
    public partial class Compras : System.Web.UI.Page
    {
        Conexao conn = new Conexao();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCliente_Click(object sender, EventArgs e)
        {
            Server.Transfer("Clientes.aspx");
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtEndereco.Text) || String.IsNullOrEmpty(txtCpf.Text) || String.IsNullOrEmpty(txtCodfunc.Text) || String.IsNullOrEmpty(txtValor.Text) || String.IsNullOrEmpty(txtProduto.Text))
            {
                lblMensage.Text = "Insira os dados!!!";
            }
            else
            {
                String metodoPag = listPagamento.SelectedItem.Text;
                double valor = double.Parse(txtValor.Text.Replace(".",","));
               
                conn.Abrircon();
                conn.SalvarCompra(txtCodfunc.Text, txtCpf.Text, txtProduto.Text,valor, metodoPag, txtEndereco.Text);
                conn.Fecharcon();
                lblMensage.Text =  "Compra realizada" ;
            }
        }
    }
}