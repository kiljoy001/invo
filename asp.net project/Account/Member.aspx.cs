using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net_project.Account
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {//check for cookie
            if (Request.Cookies["welcome"] !=null)
            {
                string login = Request.Cookies["welcome"].Value;
                string[] cleanup = login.Split('=');
                modeldb.SelectParameters.Add("product_enable",System.Data.DbType.Boolean,"true");
                modeldb.SelectParameters.Add("owner", cleanup[1]);
                modeldb.SelectCommand = "SELECT [product_name], [product_units], [product_price], [product_guid] FROM [Product] WHERE ([product_enable] = @product_enable and [product_owner] = @owner)";
               
            }
            else //no cookie, no access
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}