using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto1VedeosaulasdoNeri
{
    public partial class ValidacaoCampos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
             // A validação é feita antes de ir para o servidor ou seja é feita no lado cliente
            if (this.IsPostBack) // Quando a pagina já foi executada(não é a primeira vez) e está respondendo a uma execução ex: (clicando no botão salvar)
            {
                RequiredFieldValidator1Nome.Validate();
                if( RequiredFieldValidator1Nome.IsValid)
                {
                    Response.Write(" Campo Nome válido");
                }
                else
                {
                    Response.Write(" Campo Nome inválido");
                }

                // verificando se todos os campos da pagina estão validos
                Page.Validate();
                if(Page.IsValid)
                {
                    Response.Write("Todos os campos estão válidos");
                }
                else
                {
                    Response.Write("Alguns campos não estão válidos");
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // trocando (causes validation para false) a validação é feita direto no servidor
        }
    }
}