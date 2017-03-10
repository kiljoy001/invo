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
                modeldb.SelectCommand = "SELECT [product_name], [product_units], [product_price], [product_guid], [product_clusterkey] FROM [Product] WHERE ([product_enable] = @product_enable and [product_owner] = @owner)";
                //modeldb.DeleteCommand = "SELECT [product_name], [product_units], [product_price], [product_guid], [product_clusterkey] FROM [Product] WHERE ([product_enable] = @product_enable and [product_owner] = @owner)"

            }
            else //no cookie, no access
            {
                Response.Redirect("Login.aspx");
            }
            SqlDataSource1.SelectCommand = "select * from Product where product_clusterkey = @idkey";
        }

        protected void product_grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            divEdit.Style["display"] = "panel-info";
        }
        protected void frmEdit_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            product_grid.DataBind();
        }
        protected void updateNameBtn_Click(object sender, EventArgs e)
        {
            TextBox ibox = (TextBox)frmEdit.FindControl("input_name");
            string newName = ibox.Text;
            string login = Request.Cookies["welcome"].Value;
            SqlDataSource1.UpdateParameters.Add("newName", newName);
            SqlDataSource1.UpdateParameters.Add("owner", login);
            SqlDataSource1.UpdateCommand = "update product set product_name = @newName where product_owner = @owner and product_clusterkey = @idkey";
        }
    }
}