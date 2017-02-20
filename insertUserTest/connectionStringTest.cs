using System;
using NUnit.Framework;
using asp.net_project;
using System.Data.SqlClient;

namespace insertUserTest
{
    
    //Arrange
    public class testConnection : AbstractedSQL
    {
        public testConnection()
        {
            using (SqlConnection dbConnect = new SqlConnection())
            {
                dbConnect.ConnectionString = connection;
            }
        }

    }
    []
    public class connectionStringTest
    {
        [TestMethod]
        public void ConnectionStringNotEqNull()
        {
            //Act
            testConnection constring = new testConnection();
            string result = constring.connection;
            //Assert
            Assert.AreEqual("Server = tcp:webappdb-csi291.database.windows.net,1433;Initial Catalog = model_db; Persist Security Info=False;User ID =webappdb_csi291; Password=GKLq4AqS9NadbUJ9qCbHemkc; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30;", result);
        }
    }
}
