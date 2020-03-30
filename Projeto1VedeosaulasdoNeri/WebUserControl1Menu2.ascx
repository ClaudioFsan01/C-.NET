<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1Menu2.ascx.cs" Inherits="Projeto1VedeosaulasdoNeri.WebUserControl1Menu2" %>
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />

<asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DataSourceID="SiteMapDataSource1" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticDisplayLevels="2" StaticSubMenuIndent="10px" style="font-size: large">
    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <DynamicMenuStyle BackColor="#F7F6F3" />
    <DynamicSelectedStyle BackColor="#5D7B9D" />
    <DynamicItemTemplate>
        <%# Eval("Text") %>
    </DynamicItemTemplate>
    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticSelectedStyle BackColor="#5D7B9D" />
</asp:Menu>


