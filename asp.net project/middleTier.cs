using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



namespace asp.net_project
{
    public class middleTier
    { 
        public middleTier()
        {
            using (SqlConnection dbConnect = new SqlConnection())
            {
                try
                {
                    dbConnect.ConnectionString = "Server = tcp:webappdb-csi291.database.windows.net,1433;Initial Catalog = model_db; Persist Security Info=False;User ID =webappdb_csi291; Password=GKLq4AqS9NadbUJ9qCbHemkc; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30;";
                }
                catch (SqlException SE)
                {
                    throw SE;
                }
            }
                
        }
        public int insertUser(string password, string fName, string lName, string phone, string login, string cname, string ctitle, string caddr, string czip, string cstate, string city)
        {
            using (SqlConnection dbConnect = new SqlConnection())
            {
                SqlCommand newUser = new SqlCommand();
                try
                {
                    dbConnect.ConnectionString = "Server = tcp:webappdb-csi291.database.windows.net,1433;Initial Catalog = model_db; Persist Security Info=False;User ID =webappdb_csi291; Password=GKLq4AqS9NadbUJ9qCbHemkc; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30;";
                    dbConnect.Open();
                    newUser.Connection = dbConnect;
                    newUser.CommandType = CommandType.StoredProcedure;
                    newUser.CommandText = "[dbo].[insertUser]";
                    newUser.Parameters.Clear();
                    newUser.Parameters.Add("@login", SqlDbType.NVarChar, 60).Value = login;
                    newUser.Parameters.Add("@password", SqlDbType.NVarChar, 60).Value = password;
                    newUser.Parameters.Add("@fname", SqlDbType.NVarChar, 60).Value = fName;
                    newUser.Parameters.Add("@lname", SqlDbType.NVarChar, 60).Value = lName;
                    newUser.Parameters.Add("@phone", SqlDbType.NVarChar, 11).Value = phone;
                    newUser.Parameters.Add("@cname", SqlDbType.NVarChar, 255).Value = cname;
                    newUser.Parameters.Add("@ctitle", SqlDbType.NVarChar, 60).Value = ctitle;
                    newUser.Parameters.Add("@caddr", SqlDbType.NVarChar, 255).Value = caddr;
                    newUser.Parameters.Add("@czip", SqlDbType.NVarChar, 6).Value = czip;
                    newUser.Parameters.Add("@cstate", SqlDbType.NVarChar, 2).Value = cstate;
                    newUser.Parameters.Add("@city", SqlDbType.NVarChar, 60).Value = city;
                    int keyReturn = Convert.ToInt32(newUser.ExecuteScalar());
                    return keyReturn;
                }
                catch (SqlException se)
                {
                    return -3;
                }
                catch (Exception ex)
                {
                    return -5;
                }
            }
        }
        public string generateHash(string password)
        {
            string passString = password;
            string salt = BCrypt.Net.BCrypt.GenerateSalt();
            return BCrypt.Net.BCrypt.HashPassword(passString, salt);
        }
        public bool compareHash(string enteredPassword, string dbHash)
        {
            return BCrypt.Net.BCrypt.Verify(enteredPassword, dbHash);
        }
        public string getHash(string email)
        {
            string hash = null;
            using (SqlConnection dbConnect = new SqlConnection())
            {
                SqlCommand getPwd = new SqlCommand("SELECT user_password from site_login where user_login like @login");
                try
                {
                    dbConnect.ConnectionString = "Server = tcp:webappdb-csi291.database.windows.net,1433;Initial Catalog = model_db; Persist Security Info=False;User ID =webappdb_csi291; Password=GKLq4AqS9NadbUJ9qCbHemkc; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30;";
                    dbConnect.Open();
                    getPwd.Connection = dbConnect;
                    getPwd.CommandType = CommandType.Text;
                    //getPwd.CommandText = "[dbo].[site_login]";
                    getPwd.Parameters.AddWithValue("@login", email);
                    SqlDataReader return_value = getPwd.ExecuteReader();
                    if(return_value.HasRows)
                    {
                        while(return_value.Read()){ hash = return_value.GetString(0); }
                    }
                }
                catch (SqlException se)
                {

                }
                catch (Exception e)
                {

                }
            }
            return hash;
        }
        public string getName(string email)
        {
            string name = null;
            using (SqlConnection dbConnect = new SqlConnection())
            {
                SqlCommand getPwd = new SqlCommand("SELECT user_fname from site_login where user_login like @login");
                try
                {
                    dbConnect.ConnectionString = "Server = tcp:webappdb-csi291.database.windows.net,1433;Initial Catalog = model_db; Persist Security Info=False;User ID =webappdb_csi291; Password=GKLq4AqS9NadbUJ9qCbHemkc; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30;";
                    dbConnect.Open();
                    getPwd.Connection = dbConnect;
                    getPwd.CommandType = CommandType.Text;
                    //getPwd.CommandText = "[dbo].[site_login]";
                    getPwd.Parameters.AddWithValue("@login", email);
                    SqlDataReader return_value = getPwd.ExecuteReader();
                    if (return_value.HasRows)
                    {
                        while (return_value.Read()) { name = return_value.GetString(0); }
                    }
                }
                catch (SqlException se)
                {

                }
                catch (Exception e)
                {

                }
            }
            return name;
        }
        
    }

}