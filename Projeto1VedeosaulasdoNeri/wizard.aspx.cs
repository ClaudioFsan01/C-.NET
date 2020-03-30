using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto1VedeosaulasdoNeri
{
    public partial class wizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Wizard1.ActiveStepIndex = 0;
            }
           
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {    // o controlador FindControl pega o valor no TextBox 
            var nomePessoa = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbNomePessoa")).Text;
            if (string.IsNullOrEmpty(nomePessoa))
            {
                Label7nomepessoa.Text = "Nome obrigatorio.";
            }
            var cpfPessoa = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbCPF")).Text;
            var nmpessoaJuridica = ((TextBox)Wizard1.WizardSteps[1].FindControl("tnNomeEmprea")).Text;
            var CNPJ = ((TextBox)Wizard1.WizardSteps[1].FindControl("tbCNPJ")).Text;
            var nomeBanco = ((TextBox)Wizard1.WizardSteps[2].FindControl("tbNomeBanco")).Text;
            var numeroConta = ((TextBox)Wizard1.WizardSteps[2].FindControl("tbNumeroConta")).Text;


            Response.Write("Dados enviados com sucesso ! <br>");
            Response.Write("---------------------  <br>");
            Response.Write(" Nome  : " + nomePessoa + " <br>");
            Response.Write(" CPF : " + cpfPessoa + " <br>");
            Response.Write(" Empresa  : " + nmpessoaJuridica + " <br>");
            Response.Write(" CNPJ : " + CNPJ + " <br>");
            Response.Write(" Banco : " + nomeBanco + " <br>");
            Response.Write(" Conta : " + numeroConta + " <br>");
            Wizard1.Visible = false;


        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}