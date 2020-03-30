<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logradouro.aspx.cs" Inherits="Projeto1VedeosaulasdoNeri.Logradouro" %>

<%@ Register src="WebUserControlMenu.ascx" tagname="WebUserControlMenu" tagprefix="uc1" %>

<%@ Register src="MenuTree.ascx" tagname="MenuTree" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 142px">
    <form id="form1" runat="server">
        <div>
            <uc2:MenuTree ID="MenuTree1" runat="server" />
            <br />
            <br />
            <br />
            <br />
            INFORMATICON<br />
            <br />
            Cadastros de Logradouros<br />
            <br />
            Código :&nbsp;<br />
            <br />
            Descrição :</div>
    </form>
</body>
</html>
