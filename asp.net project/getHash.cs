using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace asp.net_project
{
    public class getHash : AbstractedSQL
    {
        string hash = null;
        string selectPwd = "SELECT user_password from site_login where user_login like @login";
        public getHash(string email)
        {
            using (SqlConnection dbConnect = new SqlConnection())
            {

                SqlCommand getPwd = new SqlCommand(selectPwd);
                try
                {
                    dbConnect.ConnectionString = connection;
                    dbConnect.Open();
                    getPwd.Connection = dbConnect;
                    getPwd.CommandType = CommandType.Text;
                    getPwd.Parameters.AddWithValue("@login", email);
                    SqlDataReader return_value = getPwd.ExecuteReader();
                    if (return_value.HasRows)
                    {
                        while (return_value.Read()) { hash = return_value.GetString(0); }
                    }
                }
                catch (SqlException se)
                {

                }
                catch (Exception e)
                {

                }
            }
        }
                public string hashValue { get { return hash; } }
            }

        }
