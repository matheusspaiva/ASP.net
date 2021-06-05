<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Compras.aspx.cs" Inherits="Projeto_Multiplataforma.Compras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tralha: Compras </title>
</head>
<body>
    <div>
        <form id="form2" runat="server">
            <asp:Label runat="server" Text="Informações da compra" Font-Size="25px" Font-Bold="true"/><br /><br />
            <asp:Label runat="server" Text="Codigo do Funcionario"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtCodfunc" Width="150px"/> <br /><br />
            <asp:Label runat="server" Text="Insira o CPF do cliente"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtCpf" Width="150px" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
            <asp:Button runat="server" ID="btnAddCliente" Text="Adcionar Cliente" OnClick="btnAddCliente_Click" />
            <br /><br />
            <asp:Label runat="server" Text="Qual o produto comprado"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtProduto" Width="150px" /> <br /><br />
            <asp:Label runat="server" Text="Qual o valor da compra realizado"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtValor" Width="150px" /> <br /><br />
			<asp:Label  runat="server" Text="Forma de pagamento" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:DropDownList runat="server" ID="listPagamento">
                <asp:ListItem>Dinheiro</asp:ListItem>
                <asp:ListItem>Cartão de Credito </asp:ListItem>
                <asp:ListItem>Cartão de Debito</asp:ListItem>
			</asp:DropDownList>
            <br /><br />
            <asp:Label runat="server" Text="Endereço da loja atual"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtEndereco" Width="300px" /> <br /><br /><br />
            <asp:Button runat="server" ID="btnComprar" Text="Reaizar compra" OnClick="btnComprar_Click" /> 
            <br /><br />
            <asp:Label runat="server" Text="" ID="lblMensage" ForeColor="red"/>
        </form>
    </div>
	
</body>
</html>
