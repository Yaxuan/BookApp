using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace DataTest
{
    /// <summary>
    /// Summary description for DataTest
    /// </summary>
    [TestClass]
    public class DataTest
    {
        public DataTest()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        //
        // You can use the following additional attributes as you write your tests:
        //
        // Use ClassInitialize to run code before running the first test in the class
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup to run code after all tests in a class have run
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // Use TestInitialize to run code before running each test 
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // Use TestCleanup to run code after each test has run
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion



        [TestMethod]
        public void TestMethod()
        {
            var dataGen = new DataGeneration();
            dataGen.TearDownData();

            //Default: member:16000, employee:10, book:100000, reservation: 100 * 0.2
            dataGen.GenerateData(16000, 10, 100000);
        }


        //[TestMethod]
        //public void CreateMoreReservations()
        //{
        //    var dataGen = new DataGeneration();
        //    dataGen.GenerateReservation();
        //}

        //[TestMethod]
        //public void CreateNormalMember()
        //{
        //    var dataGen = new DataGeneration();
        //    dataGen.GenerateNormalMember();
        //}

        //context.Database.ExecuteSqlCommand( 
        //                    @"UPDATE Blogs SET Rating = 5" + 
        //                        " WHERE Name LIKE '%Entity Framework%'" 
        //                    ); 
    }
}
