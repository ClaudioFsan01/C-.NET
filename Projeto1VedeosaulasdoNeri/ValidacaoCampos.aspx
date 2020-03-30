<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidacaoCampos.aspx.cs" Inherits="Projeto1VedeosaulasdoNeri.ValidacaoCampos" %>

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
            
                    <asp:Panel ID="Panel1Formulario" runat="server" BackColor="#FFFF99" BorderStyle="None" GroupingText="Validação de Campos" Height="599px">
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabelNome" runat="server" Text="Nome :"></asp:Label>
                        &nbsp;<asp:TextBox ID="TextBox2Nome" runat="server" style="margin-left: 23px" Width="153px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1Nome" runat="server" ControlToValidate="TextBox2Nome" EnableClientScript="False" ErrorMessage="* Campo Nome é obrigatório " ForeColor="#FF3300" ValidationGroup="dadosPessoais">*</asp:RequiredFieldValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp; Data Nasc:
                        <asp:TextBox ID="TextBoxQtdFilhos" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RangeValidator ID="RangeValidatorQtdFilhos" runat="server" ControlToValidate="TextBoxQtdFilhos" EnableClientScript="False" ErrorMessage="Data de nascimento inválida" ForeColor="#FF3300" MaximumValue="04/08/2019" MinimumValue="12/12/1880" Type="Date">*</asp:RangeValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp; Endereço :<asp:TextBox ID="TextBoxEndereco" runat="server" style="margin-left: 10px" Width="152px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEnd" runat="server" ControlToValidate="TextBoxEndereco" EnableClientScript="False" ErrorMessage="Endereço obrigatório" ForeColor="#FF3300" ValidationGroup="dadosPessoais">*</asp:RequiredFieldValidator>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp; CEP :&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxCEP" runat="server" Width="126px"></asp:TextBox>
&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxCEP" EnableClientScript="False" ErrorMessage="Cep inválido" ForeColor="#FF3300" ValidationExpression="\d{5}(-\d{3})?">*</asp:RegularExpressionValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp; CPF :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3CPF" runat="server" style="margin-left: 0px" Width="148px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorCPF" runat="server" ControlToValidate="TextBox3CPF" EnableClientScript="False" ErrorMessage="CPF obrigatório" ForeColor="#FF3300" ValidationGroup="dadosPessoais">*</asp:RequiredFieldValidator>
                        <br />
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp; Email :&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxEmail" runat="server" Width="158px"></asp:TextBox>
&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="E-mail inválido  " ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp; Site :&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBoxSite" runat="server" Height="21px" style="margin-left: 4px; margin-top: 20px" Width="146px"></asp:TextBox>
&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxSite" EnableClientScript="False" ErrorMessage="Endereço de site inválido" ForeColor="#FF3300" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">*</asp:RegularExpressionValidator>
                        <br />
                        &nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp; Senha :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tbSenha" runat="server" style="margin-left: 0px" Width="145px" Height="22px"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSenha" runat="server" ControlToValidate="tbSenha" EnableClientScript="False" ErrorMessage="Senha obrigatória" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp; Confirma Senha :&nbsp;&nbsp;
                        <asp:TextBox ID="tbConfirmaSenha" runat="server" Width="151px"></asp:TextBox>
&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbSenha" ControlToValidate="tbConfirmaSenha" EnableClientScript="False" ErrorMessage="Senhas diferentes" ForeColor="#FF3300">*</asp:CompareValidator>
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button1Enviar" runat="server" Text="Enviar Dados" Width="119px" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Campos Requeridos dados Pessoais" ValidationGroup="dadosPessoais" Width="229px" />
&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Validação direto no servidor" Width="194px" />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <br />
                        <br />
                        &nbsp;<br />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Solid" Height="173px" ShowMessageBox="True" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                    <br />
                    <br />
               
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
