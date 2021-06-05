<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cartão.aspx.cs" Inherits="Projeto_Multiplataforma.Cartão" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tralha: Cartão</title>
</head>
<body>
    <div>
        <form  runat="server">
            <asp:Label runat="server" Text="CPF do dono do cartão" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtCPF" width="150px"/> <br /><br />
            <asp:Label runat="server" Text="Nome do banco" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtBanco" width="150px"/> <br /><br />
            <asp:Label  runat="server" Text="Tipo de cartão" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:DropDownList runat="server" ID="listPag">
                <asp:ListItem>Cartão de Credito </asp:ListItem>
                <asp:ListItem>Cartão de Debito</asp:ListItem>
			</asp:DropDownList><br /><br />
            <asp:Label runat="server" Text="Numero do cartão" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtnumCartao" width="150px"/> <br /><br />
            <asp:Label runat="server" Text="Codigo de segurança" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtCodSeg" width="150px"/> <br /><br />
            <asp:Label runat="server" Text="Validade do cartão" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox runat="server" ID="txtValidade" width="150px"/> <br /><br /><br />
            <asp:Button runat="server" ID="btnCadastro" Text="Cadastrar" OnClick="btnCadastro_Click" /><br /><br />
            <asp:Label runat="server" ID="lblMensagem" ForeColor="red"/>
        </form>
    </div>
</body>
</html>
