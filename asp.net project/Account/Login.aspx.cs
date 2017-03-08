using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using asp.net_project.Models;
using wpf;
using wpf.SQL;

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
            getHash hash = new getHash(Email.Text);
            checkEmail compare = new checkEmail(Email.Text);
            if (compare.check_if_correct(Email.Text))
            {

                    HttpCookie welcome = new HttpCookie("welcome");
                    welcome["user"] = Email.Text;
                    Response.Cookies.Add(welcome);

                Response.Redirect("Member.aspx");
            }
        }
      }
}