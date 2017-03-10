using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using Elmah;
//abstracted class that collects hash from the database for logins
namespace wpf
{
    public class getHash : AbstractedSQL
    {
        string hash = null;
        string selectPwd = "SELECT user_password from site_login where user_login like @login";
        public getHash(string email)
        {
            using (SqlConnection dbConnect = new SqlConnection())
            {
                dbConnect.ConnectionString = connection;
                SqlCommand getPwd = new SqlCommand(selectPwd);
                try
                {
                    
                    dbConnect.Open();
                    getPwd.Connection = dbConnect;
                    getPwd.CommandType = CommandType.Text;
                    getPwd.Parameters.AddWithValue("@login", email);
                    SqlDataReader return_value = getPwd.ExecuteReader();
                    if (return_value.HasRows)
                    {
                        while (return_value.Read()) { hash = return_value.GetString(0); }
                    }
                    else
                    {
                        throw new ArgumentNullException();
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
                public string hashValue { get { return hash; } }
            }

        }
