using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using Elmah;

namespace wpf.SQL
{
    class checkEmail : AbstractedSQL
    {
        string email_value = null;
        string selectEmail = "SELECT user_login from site_login where user_login like @login";
        public checkEmail(string email)
        {
            using (SqlConnection dbConnect = new SqlConnection())
            {
                dbConnect.ConnectionString = connection;
                SqlCommand verify = new SqlCommand(selectEmail);
                try
                {
                    dbConnect.Open();
                    verify.Connection = dbConnect;
                    verify.CommandType = CommandType.Text;
                    verify.Parameters.AddWithValue("@login", email);
                    SqlDataReader return_value = verify.ExecuteReader();
                    if(return_value.HasRows)
                    {
                        while (return_value.Read()) {email_value = return_value.GetString(0); }
                    }
                }
                catch (SqlException se)
                {
                    //elmah logging
                    ErrorSignal.FromCurrentContext().Raise(se);
                }
                catch (Exception e)
                {
                    ErrorSignal.FromCurrentContext().Raise(e);
                }
            }
        }
        public bool check_if_correct(string email)
        {
            if(email_value == email) { return true; }
            else { return false; }         
        }
        public string Value { get { return email_value; } }
    }
}
