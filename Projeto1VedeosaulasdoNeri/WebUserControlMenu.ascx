<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlMenu.ascx.cs" Inherits="Projeto1VedeosaulasdoNeri.WebUserControlMenu" %>
<p>
    &nbsp;</p>
<asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px" style="font-size: large">
    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#F7F6F3" />
    <DynamicSelectedStyle BackColor="#5D7B9D" />
    <Items>
        <asp:MenuItem Text="Cadastros" Value="Cadastros">
            <asp:MenuItem NavigateUrl="~/Bairro.aspx" Text="Bairros" Value="Bairros"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Logradouro.aspx" Text="Logradouros" Value="Logradouros"></asp:MenuItem>
            <asp:MenuItem Text="Clientes" Value="Clientes"></asp:MenuItem>
            <asp:MenuItem Text="Estoque" Value="Estoque">
                <asp:MenuItem Text="Entrada" Value="Entrada">
                    <asp:MenuItem Text="Novo Item" Value="Novo Item"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Saída" Value="Saída"></asp:MenuItem>
            </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Consultas" Value="Consultas"></asp:MenuItem>
        <asp:MenuItem Text="Relatórios" Value="Relatórios"></asp:MenuItem>
        <asp:MenuItem Text="Utilitários" Value="Utilitários"></asp:MenuItem>
    </Items>
    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#5D7B9D" />
</asp:Menu>

