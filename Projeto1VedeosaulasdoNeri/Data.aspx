<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="Projeto1VedeosaulasdoNeri.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="#FFFF99" BorderColor="#3399FF" BorderWidth="2px" CellPadding="4" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#33CCFF" RepeatColumns="2">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <ItemTemplate>
                    Nome do Curso :&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"nomeCurso") %>'></asp:Label> 
                    <br> </br>
                    Preço :&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"valorCurso") %>'></asp:Label>
                    <br>
                    <br></br>
                    </br>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
            </asp:DataList>
            <br />
        </div>
    </form>
</body>
</html>
