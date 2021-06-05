<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="Projeto_Multiplataforma.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tralha: Cliente</title>
</head>
<body>
    <div>
        <form runat="server">
            <asp:Label runat="server" Text="Informe os dados do cliente" font-size="25px" Font-Bold="true"/><br /><br />
            <asp:Label runat="server" Text="CPF do cliente"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtCPF" width="150px"/> <br /><br />
            <asp:Label runat="server" Text="Nome do cliente"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="TxtNome" width="350px"/> <br /><br />
            <asp:Label runat="server" Text="Endereço do cliente"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="TxtEndereco" width="400px"/> <br /><br />
            <asp:Label runat="server" Text="Telefone" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtTelefone" /><br /><br /><br />
            <asp:Button runat="server" ID="btnCadastro" Text="Cadastrar" OnClick="btnCadastro_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBuscar" Text="Buscar" OnClick="btnBuscar_Click" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnAlterar" Text="Alterar" OnClick="btnAlterar_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnExcluir" Text="Excluir" OnClick="btnExcluir_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br /><br />
            <asp:Label runat="server" Text="" ID="lblMensage" ForeColor="red"/>
            <br /><br />
             <div>
        
            <asp:Label runat="server" Text="Deseja Vincular um cartão para cliente?" Font-Size="25px"/><br /><br />
            <asp:Button runat="server" Text="Vincular" ID="btnVincular" OnClick="btnVincular_Click" />
        
            </div>
        </form>
    </div>
   
</body>
</html>
