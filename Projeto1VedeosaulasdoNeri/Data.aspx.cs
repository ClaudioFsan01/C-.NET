using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto1VedeosaulasdoNeri
{
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(! Page.IsPostBack) // Se for a primeira execução da pagina então povoar
            {
                DataList1.DataSource = RetornaCursos();  // povoando o dataList1 usando DataSource recebendo o retorno do metodo RetornaCursos()
                DataList1.DataBind();
            }
           
        }

        private List<Cursos> RetornaCursos()
        {
            var itens = new List<Cursos>();

            itens.Add(new Cursos() { nomeCurso = "AspNet C#", valorCurso = float.Parse(" 100.00") });
            itens.Add(new Cursos() { nomeCurso = "Java", valorCurso = float.Parse("50.00") });
            itens.Add(new Cursos() { nomeCurso = " banco de dados", valorCurso = float.Parse("30.00") });

            return itens;
        }
    }
}