using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Projeto_Multiplataforma
{
    public class Conexao
    {
        public String conec = "SERVER=localhost; DATABASE=projeto_multiplataforma; UID=root; PWD=; PORT=3306;";
        public MySqlConnection con = null;

        public void Abrircon()
        {
            try
            {
                con = new MySqlConnection(conec);
                con.Open();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void Fecharcon()
        {
            try
            {
                con = new MySqlConnection(conec);
                con.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void SalvarCliente(String cpf, String nome, String endereco, String telefone)
        {
            String sql= "INSERT INTO cliente(cpf_cli, nome_cli, end_cli, tel_cli) VALUES(@cpf, @nome, @end, @tel)";
            MySqlCommand cmd;
            cmd = new MySqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@cpf", cpf);
            cmd.Parameters.AddWithValue("@nome", nome);
            cmd.Parameters.AddWithValue("@end", endereco);
            cmd.Parameters.AddWithValue("@tel", telefone);
            cmd.ExecuteNonQuery();
        }

        public String RetornarSenha(String codigo)
        {
            String sql = "SELECT senha_func FROM funcionario WHERE cod_func = @cod";
            MySqlCommand cmd = new MySqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@cod", codigo);
            MySqlDataReader dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                return dtr["senha_func"].ToString();
            }
            else
            {
                return "Não encontrou";
            }
        }

        public void SalvarCompra(String codigo, String cpf, String produto, double valor, String forma, String endereco)
        {
            String sql = "INSERT INTO COMPRAS(fk_fun, fk_clie, produto, valor, forma_pag, ende_loj) VALUES(@cod_fun, @cpf_cli, @produto, @valor, @forma, @endereco); ";
            MySqlCommand cmd;
            cmd = new MySqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@cod_fun", codigo);
            cmd.Parameters.AddWithValue("@cpf_cli", cpf);
            cmd.Parameters.AddWithValue("@produto", produto);
            cmd.Parameters.AddWithValue("@valor", valor);
            cmd.Parameters.AddWithValue("@forma", forma);
            cmd.Parameters.AddWithValue("@endereco", endereco);
            cmd.ExecuteNonQuery();
        }

        public void AlterarCliente(String cpf, String nome, String telefone, String endereco)
        {
            String sql = "UPDATE cliente SET nome_cli = @nome, end_cli = @end, tel_cli = @telefone WHERE cpf_cli = @cpf ;";
            MySqlCommand cmd;
            cmd = new MySqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@cpf", cpf);
            cmd.Parameters.AddWithValue("@nome", nome);
            cmd.Parameters.AddWithValue("@end", endereco);
            cmd.Parameters.AddWithValue("@telefone", telefone);
            cmd.ExecuteNonQuery();
        }

        public void ApagarCliente(String cpf)
        {
            String sql = "DELETE FROM cliente WHERE cpf_cli = @cpf ;";
            MySqlCommand cmd;
            cmd = new MySqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@cpf", cpf);
            cmd.ExecuteNonQuery();
        }

        public void AdicionarCartao(String numero, String codigo, String validade, String tipo, String banco, String cpf)
        {
            String sql = "INSERT INTO cartao(num_cartao, cod_seg, validade, tipo_car, nome_banco, cpf_dono) VALUES(@numero, @codigo, @validade, @tipo, @banco, @cpf);";
            MySqlCommand cmd;
            cmd = new MySqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@numero", numero);
            cmd.Parameters.AddWithValue("@codigo", codigo);
            cmd.Parameters.AddWithValue("@validade", validade);
            cmd.Parameters.AddWithValue("@tipo", tipo);
            cmd.Parameters.AddWithValue("@banco", banco);
            cmd.Parameters.AddWithValue("@cpf", cpf);
            cmd.ExecuteNonQuery();
        }
    }
}