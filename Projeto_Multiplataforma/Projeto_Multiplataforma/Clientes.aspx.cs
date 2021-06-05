using System;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto_Multiplataforma
{
    public partial class Clientes : System.Web.UI.Page
    {
        Conexao conn = new Conexao();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVincular_Click(object sender, EventArgs e)
        {
            Server.Transfer("Cartão.aspx");
        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtCPF.Text) || String.IsNullOrEmpty(txtTelefone.Text) || String.IsNullOrEmpty(TxtEndereco.Text) || String.IsNullOrEmpty(TxtNome.Text))
            {
                lblMensage.Text = "Digite os dados";
            }
            else
            {
                try
                {
                    conn.Abrircon();
                    conn.SalvarCliente(txtCPF.Text, TxtNome.Text, TxtEndereco.Text, txtTelefone.Text);
                    conn.Fecharcon();
                    lblMensage.Text = "Cliente cadastrado";
                }catch
                {

                    lblMensage.Text = "Cliente já cadastrado";
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtCPF.Text))
            {
                lblMensage.Text = "Digite o CPF da busca";
            }
            else
            {
                try
                {
                    conn.Abrircon();
                    Consultar(txtCPF.Text);
                    conn.Fecharcon();
                    lblMensage.Text = "";
                }
                catch
                {
                    lblMensage.Text = "Cliente não cadastrado";
                }
            }
        }

        public void Consultar(String cpf)
        {
            String sql = "SELECT cpf_cli, nome_cli, end_cli, tel_cli FROM cliente WHERE cpf_cli = @cpf";
            MySqlCommand cmd = new MySqlCommand(sql, conn.con);
            cmd.Parameters.AddWithValue("@cpf", cpf);
            MySqlDataReader dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                TxtNome.Text = dtr["nome_cli"].ToString();
                txtTelefone.Text = dtr["tel_cli"].ToString();
                TxtEndereco.Text = dtr["end_cli"].ToString();
            }
            else
            {
                TxtNome.Text = "";
                txtTelefone.Text = "";
                TxtEndereco.Text = "";
            }
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtCPF.Text) || String.IsNullOrEmpty(txtTelefone.Text) || String.IsNullOrEmpty(TxtEndereco.Text) || String.IsNullOrEmpty(TxtNome.Text))
            {
                lblMensage.Text = "Digite os dados";
            }
            else
            {
                try
                {
                    conn.Abrircon();
                    conn.AlterarCliente(txtCPF.Text, TxtNome.Text, txtTelefone.Text, TxtEndereco.Text);
                    conn.Fecharcon();
                    lblMensage.Text = "Cliente alterado";
                }
                catch
                {
                    lblMensage.Text = "Erro de conexão";
                }
            }
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Abrircon();
                conn.ApagarCliente(txtCPF.Text);
                conn.Fecharcon();
                lblMensage.Text = "Cliente excluido";
            }
            catch
            {
                lblMensage.Text ="Erro ao excluir";
            }
        }
    }
}