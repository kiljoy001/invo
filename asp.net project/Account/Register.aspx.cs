using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using asp.net_project.Models;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using wpf.SQL;
using wpf;
using Elmah;

namespace asp.net_project.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            try
            {
                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(Password.Text);
                insertUser createUser = new insertUser(hashedPassword, fName.Text, lName.Text, Phone.Text, Email.Text, cName.Text, cTitle.Text, cAddress.Text, cZip.Text, cStateList.SelectedValue, City.Text);
            }
               catch (SqlException se)
            {
                //elmah logging
                ErrorSignal.FromCurrentContext().Raise(se);
            }
            catch (Exception ex)
            {
                ErrorSignal.FromCurrentContext().Raise(ex);
            }
            Response.Redirect("Login.aspx");
        }

        
        }
    }
