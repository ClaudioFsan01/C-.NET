<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bairro.aspx.cs" Inherits="Projeto1VedeosaulasdoNeri.Bairro" %>

<%@ Register src="WebUserControlMenu.ascx" tagname="WebUserControlMenu" tagprefix="uc1" %>

<%@ Register src="WebUserControl1Menu2.ascx" tagname="WebUserControl1Menu2" tagprefix="uc2" %>

<%@ Register src="MenuTree.ascx" tagname="MenuTree" tagprefix="uc3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <p style="height: 42px">   
            <uc3:MenuTree ID="MenuTree1" runat="server" />
        </p>

        <div style="height: 276px; margin-top: 100px">
            <br />
            INFORMATICON<br />
            <br />
            Cadastros de Bairros<br />
            <br />
            Código :&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="166px"></asp:TextBox>
            <br />
            <br />
            Descrição :&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="147px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" Width="68px" OnClick="Button1_Click" />
            <br />
        </div>
    </form>
</body>
</html>
