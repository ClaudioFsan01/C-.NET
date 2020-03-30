<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wizard.aspx.cs" Inherits="Projeto1VedeosaulasdoNeri.wizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <div style="margin-top: 0px">
            <br />
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="324px" style="margin-left: 123px; margin-top: 0px" Width="558px" OnFinishButtonClick="Wizard1_FinishButtonClick">
                <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                <SideBarButtonStyle ForeColor="White" />
                <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                <WizardSteps>
                    <asp:WizardStep runat="server" title="Pessoa Fisica">
                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Nome da Pessoa :"></asp:Label>
                        &nbsp;
                        <asp:TextBox ID="tbNomePessoa" runat="server" Width="165px"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label7nomepessoa" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="CPF :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tbCPF" runat="server" Width="201px"></asp:TextBox>
                    </asp:WizardStep>

                    <asp:WizardStep runat="server" title="Pessoa Jurídica">
                        &nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Text="Nome da Empresa :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tnNomeEmprea" runat="server" Width="145px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="CNPJ :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tbCNPJ" runat="server" Width="145px"></asp:TextBox>
                    </asp:WizardStep>

                    <asp:WizardStep runat="server" Title="Dados Bancarios">
                        &nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server">Banco </asp:Label>
                        &nbsp;:&nbsp;
                        <asp:TextBox ID="tbNomeBanco" runat="server" Width="157px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        &nbsp; &nbsp;<asp:Label ID="Label6" runat="server" Text="Conta :"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tbNumeroConta" runat="server" Width="155px"></asp:TextBox>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
