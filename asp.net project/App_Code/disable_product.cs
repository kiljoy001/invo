using Elmah;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace wpf.SQL
{
    class disable_product : AbstractedSQL
    {
        public void disable(Guid id, string user_login)
        {
            using (SqlConnection dbConnection = new SqlConnection())
            {
                dbConnection.ConnectionString = connection;
                dbConnection.Open();
                SqlTransaction trans = dbConnection.BeginTransaction();
                SqlCommand newProduct = dbConnection.CreateCommand();
                newProduct.Transaction = trans;
                try
                {
                    newProduct.Connection = dbConnection;
                    newProduct.CommandType = CommandType.StoredProcedure;
                    newProduct.CommandText = "[dbo].[update_enable]";
                    newProduct.Parameters.Add("@owner", SqlDbType.NVarChar, 60).Value = user_login;
                    newProduct.Parameters.Add("@guid", SqlDbType.UniqueIdentifier).Value = id;
                    newProduct.ExecuteScalar();
                    trans.Commit();
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
    }
}
        

