using HabitsToday.Model;
using HabitsToday.ViewModel;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HabitsToday.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void entrar_Click(object sender, EventArgs e)
        {
            User _user = new User();
            USERS _ObjUser = new USERS();
            _ObjUser = _user.QueryUser(TxtEmail.Text, TxtSenha.Text);

            if (_ObjUser == null)
            {
                string message = "Usuário ou senha incorretos. Por favor, tente novamente.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            }
            else if (_ObjUser.EMAIL != TxtEmail.Text || _ObjUser.PASSWORD != TxtSenha.Text)
            {
                string message = "Usuário ou senha incorretos. Por favor, tente novamente.";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
    }
}