<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="Projeto1VedeosaulasdoNeri.fileupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 13px" Text="Enviar Arquivo Simples" Width="159px" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Enviar Arquivo melhorado" Width="166px" />
            <br />
&nbsp;
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Enviar Arquivo Tipo e Tamanho" Width="204px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Status do Envio :"></asp:Label>
&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="LBstatus"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
