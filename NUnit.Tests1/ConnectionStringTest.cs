using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NUnit.Tests1
{
    [TestFixture]
    public class ConnectionStringTest
    {
        [Test]
        public void constringnotnull()
        {
            //Arrange
            TestSQL connString = new TestSQL();
            //Act
            string result = connString.connection;
            //Assert
            Assert.IsNotNull("Server = tcp:webappdb-csi291.database.windows.net,1433;Initial Catalog = model_db; Persist Security Info=False;User ID =webappdb_csi291; Password=GKLq4AqS9NadbUJ9qCbHemkc; MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout = 30;", result );
        }
    }
}
