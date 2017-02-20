using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using asp.net_project;
using System.Data.SqlClient;

namespace NUnit.Tests1
{
    class TestSQL : AbstractedSQL
    {
        public TestSQL()
            {
                using (SqlConnection dbConnection = new SqlConnection()) { dbConnection.ConnectionString = connection; }
            }
    }
}
