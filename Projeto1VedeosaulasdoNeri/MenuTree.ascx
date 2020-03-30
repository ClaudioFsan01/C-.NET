<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuTree.ascx.cs" Inherits="Projeto1VedeosaulasdoNeri.MenuTree" %>
<asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ShowLines="True">
    <Nodes>
        <asp:TreeNode Text="Cadastros" Value="Cadastros">
            <asp:TreeNode NavigateUrl="~/Bairro.aspx" Text="Bairros" Value="Bairros"></asp:TreeNode>
            <asp:TreeNode NavigateUrl="~/Logradouro.aspx" Text="Logradouros" Value="Logradouros"></asp:TreeNode>
            <asp:TreeNode Text="Estoque" Value="Estoque">
                <asp:TreeNode Text="Entrada" Value="Entrada"></asp:TreeNode>
                <asp:TreeNode Text="Saída" Value="Saída"></asp:TreeNode>
            </asp:TreeNode>
        </asp:TreeNode>
        <asp:TreeNode Text="Consultas" Value="Consultas"></asp:TreeNode>
        <asp:TreeNode Text="Relatórios" Value="Relatórios"></asp:TreeNode>
        <asp:TreeNode Text="Utilitários" Value="Utilitários"></asp:TreeNode>
    </Nodes>
</asp:TreeView>

<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />


