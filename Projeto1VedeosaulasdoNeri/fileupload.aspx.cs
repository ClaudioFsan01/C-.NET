using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto1VedeosaulasdoNeri
{
    public partial class fileupload : System.Web.UI.Page
    {
        String nomeArquivo;
        String textoUpload;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { // Desta forma caso der um erro o mesmo não será detalhado 

            var caminho = @"c:\users\micro\source\repos\Projeto1VedeosaulasdoNeri\Projeto1VedeosaulasdoNeri\upload\";
            nomeArquivo = FileUpload1.FileName;
            var caminhoCompleto = caminho + nomeArquivo;
            FileUpload1.PostedFile.SaveAs(caminhoCompleto); // jogando o arquivo para o servidor utilizando fileupload
        }

        protected void Button2_Click(object sender, EventArgs e)
        {   
            if(FileUpload1.HasFile) //  HasFile  (se tiver um arquivo selecionado faça)
            {
                // var caminho = @"c:\users\micro\source\repos\Projeto1VedeosaulasdoNeri\Projeto1VedeosaulasdoNeri\upload\";
                var caminho = Server.MapPath(@"upload\"); // Server.MapPath (para pegar o caminho do servidor para o qual o arquivo será direcionado ao fazer o upload)
                 nomeArquivo = FileUpload1.FileName;
                // var caminhoCompleto = caminho + nomeArquivo; ou
                var caminhoCompleto = string.Format("{0}{1}",caminho,nomeArquivo);

                try
                { // caso ocorra um erro o mesmo será detalhado
                  // CONTROLANDO O TAMANHO DO ARQUIVO
                 /*  var tamanhoArquivo = FileUpload1.PostedFile.ContentLength; // verificar o tamanho do arquivo em bytes 
                   if(tamanhoArquivo<4000000)
                   {
                       FileUpload1.PostedFile.SaveAs(caminhoCompleto); // jogando o arquivo para o servidor utilizando fileupload
                       Label2.Text = nomeArquivo + " Enviado com sucesso seu tamanho é : " + tamanhoArquivo;
                   }
                   else
                   {
                       Label3.Text = " Arquivo " + nomeArquivo +" não foi enviado pois é muito grande. Tamanho : "+tamanhoArquivo;
                   }
                   */
                  // CONTROLANDO O TIPO DO ARQUIVO

                    var extensao = System.IO.Path.GetExtension(nomeArquivo).ToLower();  // ToLower() (arquivo em minusculo) ou ToUpper(em maiusculo)
                                                                                      // IO(entrada e saida) Path.GetExtension(pegar a extensao do arquivo)
                   if(extensao.Equals(".jpg") || extensao.Equals(".png"))
                    {
                        FileUpload1.PostedFile.SaveAs(caminhoCompleto);
                        Label2.Text = nomeArquivo + " Enviado com sucesso";
                    }
                    else
                    {
                        Label3.Text = nomeArquivo + " Não foi enviado pois o tipo é invalido permitido somente arquivo .jpg e .png vc está enviando extensão :"+ extensao.ToString();
                    }



                }
                catch (Exception erro) // informa detalhando o tipo de erro 
                {
                    Label2.Text = "Erro " + erro + " no envio do arquivo : " + nomeArquivo;
                }

            }

            else
            {
                Label2.Text = " Selecione um arquivo";
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile) //  HasFile  (se tiver um arquivo selecionado faça)
            {
                // var caminho = @"c:\users\micro\source\repos\Projeto1VedeosaulasdoNeri\Projeto1VedeosaulasdoNeri\upload\";
                var caminho = Server.MapPath(@"upload\"); // Server.MapPath (para pegar o caminho do servidor para o qual o arquivo será direcionado ao fazer o upload)
                nomeArquivo = FileUpload1.FileName;
                var caminhoCompleto = string.Format("{0}{1}", caminho, nomeArquivo);
                try
                { 
                  
                       if(validaUpload()==true)
                       {
                        FileUpload1.PostedFile.SaveAs(caminhoCompleto);
                        Label2.Text = "Arquivo " + nomeArquivo + " Enviado com sucesso.";
                       }
                       else
                       {
                        Label2.Text= "Erro "+ textoUpload;
                       }
                                       
                                 
                    
                }
                catch (Exception erro) // informa detalhando o tipo de erro 
                {
                    Label2.Text = "Erro " + erro + " no envio do arquivo : " + nomeArquivo;
                }

            }

            else
            {
                Label2.Text = " Selecione um arquivo";
            }


        }

        public Boolean validaUpload()
        {
            Boolean retorno = true;
           


            var tamanhoArquivo = FileUpload1.PostedFile.ContentLength; // verificar o tamanho do arquivo em bytes 
            var extensao = System.IO.Path.GetExtension(nomeArquivo).ToLower();  // ToLower() (arquivo em minusculo) ou ToUpper(em maiusculo)
                                                                                /*                                                                   // IO(entrada e saida) Path.GetExtension(pegar a extensao do arquivo)
                                                                               if (!extensao.Equals(".jpg") || !extensao.Equals(".png"))
                                                                               {
                                                                                 textoUpload = " Arquivo " + nomeArquivo + " Não foi enviado pois o tipo é invalido permitido somente arquivo .jpg e .png vc está enviando extensão :" + extensao.ToString();
                                                                                //Label2.Text = nomeArquivo + " extensão " + extensao.ToString() + " Enviado com sucesso seu tamanho é : " + tamanhoArquivo;
                                                                                   return false;
                                                                               }

                                                                                */

            string [] extensoesPermitidas= {".png",".gif",".jpg",".mp3",".txt"};

            for(int i=0; i<extensoesPermitidas.Length; i++)
            {
                if(!string.Equals(extensao, extensoesPermitidas[i]))
                {
                    textoUpload = " Arquivo " + nomeArquivo + " Não foi enviado pois o tipo é invalido permitido somente arquivo .jpg e .png vc está enviando extensão :" + extensao.ToString();
                    //Label2.Text = nomeArquivo + " extensão " + extensao.ToString() + " Enviado com sucesso seu tamanho é : " + tamanhoArquivo;
                    return false;
                }
                else
                {
                    retorno = true;
                    break;
                }
               
            }
                
                 

            if (tamanhoArquivo > 300000)
            {
                textoUpload = " Arquivo " + nomeArquivo + " extensão " + extensao.ToString() + " não foi enviado pois é muito grande. Tamanho : " + tamanhoArquivo;

                return false;
            }

           
          
            return retorno;
        }
    }
}