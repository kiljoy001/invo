using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using asp.net_project.Models;

namespace asp.net_project.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            middleTier login = new middleTier();
            string hash = login.getHash(Email.Text);
            bool compare = login.compareHash(Password.Text, hash);
            if (compare)
            {
                if(RememberMe.Checked)
                {
                    HttpCookie welcome = new HttpCookie("welcome");
                    welcome["user"] = Email.Text;
                }
                Response.Redirect("Member.aspx");
            }
        }
      }
}