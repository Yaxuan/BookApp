using System;
using System.Configuration;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using BookClient.Controllers;
using BookClient.Factory;
using BookClient.Tests.Model;
using BookClient.ViewModels;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace BookClient.Tests.Controllers
{
    [TestClass()]
    public class LoginTests
    {
        //Integration test
        [TestMethod()]
        public async Task IndexTest()
        {
            LoginController controller = GetMockProviderController();

            UserLoginViewModel userLoginViewModel = new UserLoginViewModel() { User_name = "normal0", Password = "1234" };

            var redirectResult = await controller.Index(userLoginViewModel) as RedirectToRouteResult;

            Assert.IsNotNull(redirectResult, "Not a redirect result");

            Assert.AreEqual("LoggedIn", redirectResult.RouteValues["Action"]);

            Assert.AreEqual(userLoginViewModel.User_name, controller.Session["UserName"]);
        }

        private static LoginController GetMockProviderController()
        {
            var mock = new Mock<ControllerContext>();
            var session = new MockHttpSession();
            mock.Setup(p => p.HttpContext.Session).Returns(session);

            LoginController controller = new LoginController(new ServiceFactory()) { ControllerContext = mock.Object };
            return controller;
        }
    }
}