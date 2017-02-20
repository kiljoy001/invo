using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using asp.net_project;
using System.Data.SqlClient;
using NUnit.Framework;
using System.Transactions;

namespace NUnit.Tests1
{
    [TestFixture]
    class getHashTestcs
    {
        private TransactionScope scope;

        [SetUp]
        public void Setup()
        {
            scope = new TransactionScope();
        }
        [TearDown]
    }
}
