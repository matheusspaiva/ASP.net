<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Projeto_Multiplataforma.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tralha</title>
    <link href="Estilo.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <div>
    <form id="form1" runat="server">
        
            <asp:Label Text="Codigo do funcionario"  runat="server"/><br/>
            <asp:TextBox ID="txtCodfun" runat="server" />
            <br /> <br />
            <asp:Label Text="Insira sua Senha"  runat="server"/><br/>
            <asp:TextBox ID="txtSenha" runat="server" />
            <br /> <br />
            <asp:Button ID="btnAcessar" Text="Acessar" runat="server" OnClick="btnAcessar_Click" />
            <br /><br />
            <asp:Label Text="" ID="lblErro" ForeColor="red" runat="server"/><br/>
        
    </form>
    </div>
</body>
</html>
