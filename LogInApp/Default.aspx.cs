using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogInApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["User_cookie"] != null)
            {
                Username.Text = Request.Cookies["User_cookie"]["username"];
                Password.Text = Request.Cookies["User_cookie"]["psw"];
            }
        }

        protected void Login_bt_Click(object sender, EventArgs e)
        {
            Utente user = new Utente();
            user.Username = Username.Text;
            user.Password = Password.Text;

            HttpCookie cookie = new HttpCookie("User_cookie");
            cookie.Values["username"] = user.Username;
            cookie.Values["psw"] = user.Password;
            Response.Cookies.Add(cookie);

            Response.Redirect("https://localhost:44387/Logged.aspx");
        }

        public class Utente
        {
            public string Username { get; set; }

            public string Password { get; set; }

        }
    }
}