using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto1VedeosaulasdoNeri
{
    public partial class Bairro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox2.Text.Trim())) // se estiver nulo ou espaço em branco // Trim() tira os espaços em branco no inicio ou final 

                Response.Write("Vazio");

            else

                Response.Write("Não Vazio");


        }
    }
}