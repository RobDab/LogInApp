using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogInApp
{
    public partial class Logged : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["User_cookie"] != null)
            {
                string user = Request.Cookies["User_cookie"]["username"];
                UserData.Text = $"Benvenuto {user}";
            }
            else
            {
                Response.Redirect("https://localhost:44387/Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["User_cookie"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);

            Response.Redirect("https://localhost:44387/Default.aspx");
        }
    }
}