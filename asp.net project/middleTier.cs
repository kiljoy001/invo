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
                    dbConnect.ConnectionString = "Server = tcp:webappdb-csi291.database.windows.net,1433;Initial Catalog = model_db; Persist Security Info=False;User ID = {webappdb_csi291}; Password={GKLq4AqS9NadbUJ9qCbHemkc}; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30;";
                }
                catch (SqlException SE)
                {
                    throw SE;
                }
            }
                
        }
        public int insertUser(string password, string fName, string lName, string phone, string login)
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
                    newUser.Parameters.Add("@login", SqlDbType.NChar, 60).Value = login;
                    newUser.Parameters.Add("@password", SqlDbType.NChar, 60).Value = password;
                    newUser.Parameters.Add("@fname", SqlDbType.NChar, 60).Value = fName;
                    newUser.Parameters.Add("@lname", SqlDbType.NChar, 60).Value = lName;
                    newUser.Parameters.Add("@phone", SqlDbType.NChar, 11).Value = phone;
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
                finally
                {
                    dbConnect.Close();
                }
            }
        }
        public string generateHash(string password)
        {
            string passString = password;
            string salt = BCrypt.Net.BCrypt.GenerateSalt();
            return BCrypt.Net.BCrypt.HashPassword(passString, salt);
        }
    }

}