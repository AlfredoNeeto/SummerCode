using HabitsToday.Model;
using HabitsToday.ViewModel;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HabitsToday.Views
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        #region Methods

        bool validations()
        {
            if (string.IsNullOrEmpty(TxtNome.Text))
            {
                string message = "Preencha o campo Nome";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                TxtNome.BorderColor = Color.Red;
                return false;
            }

            if (string.IsNullOrEmpty(TxtEmail.Text))
            {
                string message = "Preencha o campo E-mail";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                TxtEmail.BorderColor = Color.Red;
                return false;
            }

            if (string.IsNullOrEmpty(TxtSenha.Text))
            {
                string message = "Preencha o campo Senha";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                TxtSenha.BorderColor = Color.Red;
                return false;
            }

            if (string.IsNullOrEmpty(TxtConfirmarSenha.Text))
            {
                string message = "Preencha o campo Confirmar senha";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                TxtConfirmarSenha.BorderColor = Color.Red;
                return false;
            }

            if (TxtSenha.Text.Length < 6 && TxtConfirmarSenha.Text.Length < 6)
            {
                string message = "A senha deve ter pelo menos 6 caracteres.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                TxtSenha.BorderColor = Color.Red;
                TxtConfirmarSenha.BorderColor = Color.Red;
                return false;
            }

            if (TxtSenha.Text != TxtConfirmarSenha.Text)
            {
                string message = "A senha de confirmação não corresponde à senha digitada. Por favor, verifique e tente novamente.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                TxtSenha.BorderColor = Color.Red;
                TxtConfirmarSenha.BorderColor = Color.Red;

                return false;
            }

            if (!string.IsNullOrEmpty(TxtEmail.Text))
            {
                var viewModel = new User();

                var user = viewModel.GetUser(TxtEmail.Text);
                if(user.Count > 0)
                {
                    string message = "Já existe um usuário com este email. Por favor, informe outro email.";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                    TxtEmail.Focus();
                    TxtEmail.Text = "";

                    return false;
                }
            }

            return true;
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCriarConta_Click(object sender, EventArgs e)
        {
            try
            {
                if (validations() == true)
                {
                    USERS NewUser = new USERS();
                    NewUser.USERNAME = TxtNome.Text;
                    NewUser.EMAIL = TxtEmail.Text;
                    NewUser.PASSWORD = TxtSenha.Text;

                    User viewModel = new User();
                    viewModel.RegisterUser(NewUser);

                    string message = "Criação de conta realizada com sucesso";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
                }
                else
                {
                    string message = "Ops! Algo deu errado, tente novamente";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);

                    // Response.Redirect("CreateAnAccount.aspx");
                }

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + ex.Message + "');", true);
            }

        }
    }
}