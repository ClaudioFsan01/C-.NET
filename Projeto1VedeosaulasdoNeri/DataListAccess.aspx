<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListAccess.aspx.cs" Inherits="Projeto1VedeosaulasdoNeri.DataListAccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                nomeCurso:
                <asp:Label ID="nomeCursoLabel" runat="server" Text='<%# Eval("nomeCurso") %>' />
                <br />
                valorCurso:
                <asp:Label ID="valorCursoLabel" runat="server" Text='<%# Eval("valorCurso") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [nomeCurso], [valorCurso] FROM [cursos]"></asp:SqlDataSource>
    </form>
</body>
</html>
