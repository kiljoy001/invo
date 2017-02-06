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


namespace asp.net_project.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            int insert = 0;
            middleTier createUser = new middleTier();
            string hashedPassword = createUser.generateHash(Password.Text);
            try
            {
                insert = createUser.insertUser(hashedPassword, fName.Text, lName.Text, Phone.Text);
            }
            catch
            {
                if(insert == -3)
                {
                    //popupbox with sql error?
                }
                else if(insert == -5)
                {
                    //popupbox with general error?
                }

            }
        }
    }
}