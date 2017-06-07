using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Results;
using BookApp.Controllers;
using BookApp.DataAccess.Interface;
using BookApp.Models;
using BookApp.Tests.DataInput;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;


namespace BookApp.Tests.UnitTest
{
    [TestClass]
    public class LoanControllerTest
    {
        /// <summary>
        /// FTC 1.1.1
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task MemberReserveNonpositiveNumberOfBooks()
        {
            try
            {
                var input = Input.TestCaseInput1();
                var inputItem = input.Item1;
                var inputMember = input.Item2;
                var inputBookStatusView = input.Item3;
                var inputLoanRequirement = input.Item4;

                inputLoanRequirement.CopyNumber = 0;

                var controller = GetMockedLoanController(inputItem, inputMember, inputBookStatusView);

                IHttpActionResult response = await controller.LoanBookAsync(inputLoanRequirement).ConfigureAwait(false);

                Assert.IsInstanceOfType(response, typeof(InvalidModelStateResult));                
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

        }        

        /// <summary>
        /// FTC 1.1.2
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task MemberNotExist()
        {
            try
            {
                var input = Input.TestCaseInput1();
                var inputItem = input.Item1;
                var inputBookStatusView = input.Item3;
                var inputLoanRequirement = input.Item4;

                var controller = GetMockedLoanController(inputItem, null, inputBookStatusView);

                IHttpActionResult response = await controller.LoanBookAsync(inputLoanRequirement).ConfigureAwait(false);

                NegotiatedContentResult<string> result = (NegotiatedContentResult<string>)response;

                Assert.AreEqual("Member not found", result.Content);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

        }

        /// <summary>
        /// FTC 1.1.3
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task MemberReserveBookNotAvailable()
        {
            try
            {
                var input = Input.TestCaseInput1();
                var inputItem = input.Item1;
                var inputMember = input.Item2;
                var inputBookStatusView = input.Item3;
                var inputLoanRequirement = input.Item4;

                inputItem.SerialItems = new List<SerialItem>();

                var controller = GetMockedLoanController(inputItem, inputMember, inputBookStatusView);

                IHttpActionResult response = await controller.LoanBookAsync(inputLoanRequirement).ConfigureAwait(false);

                NegotiatedContentResult<string> result = (NegotiatedContentResult<string>)response;

                Assert.AreEqual("Required book is not available.", result.Content);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

        }

        /// <summary>
        /// FTC 1.1.4
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task MaxLoanLimitExceed()
        {
            try
            {
                var input = Input.TestCaseInput1();
                var inputItem = input.Item1;
                var inputMember = input.Item2;
                var inputBookStatusView = input.Item3;
                var inputLoanRequirement = input.Item4;

                inputMember.Loan_Rule.Max_loan_book = 1;

                var controller = GetMockedLoanController(inputItem, inputMember, inputBookStatusView);

                IHttpActionResult response = await controller.LoanBookAsync(inputLoanRequirement).ConfigureAwait(false);

                NegotiatedContentResult<string> result = (NegotiatedContentResult<string>)response;

                Assert.AreEqual("Loan max limit exceeded.", result.Content);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

        }

        /// <summary>
        /// FTC 1.1.5
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task NormalMemberReserveOneBook()
        {
            try
            {
                var input = Input.TestCaseInput1();
                var inputItem = input.Item1;
                var inputMember = input.Item2;
                var inputBookStatusView = input.Item3;
                var inputLoanRequirement = input.Item4;

                var controller = GetMockedLoanController(inputItem, inputMember, inputBookStatusView);

                IHttpActionResult response = await controller.LoanBookAsync(inputLoanRequirement).ConfigureAwait(false);

                OkNegotiatedContentResult<ReservationResult> result = (OkNegotiatedContentResult<ReservationResult>)response;

                ReservationResult output = new ReservationResult() {ReservationBatchId = 1, ReservedItemIds = new int[] {1}};

                Assert.IsTrue(result.Content.Equals(output));
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

        }

        /// <summary>
        /// FTC 1.1.6
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task OtherLibraryReserveBookCanNotLoanOut()
        {
            try
            {
                var input = Input.TestCaseInput2();
                var inputItem = input.Item1;
                var inputMember = input.Item2;
                var inputBookStatusView = input.Item3;
                var inputLoanRequirement = input.Item4;

                var controller = GetMockedLoanController(inputItem, inputMember, inputBookStatusView);

                IHttpActionResult response = await controller.LoanBookAsync(inputLoanRequirement).ConfigureAwait(false);

                NegotiatedContentResult<string> result = (NegotiatedContentResult<string>)response;

                Assert.AreEqual("Required book is not available.", result.Content);
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        /// <summary>
        /// FTC 1.1.7
        /// </summary>
        /// <returns></returns>
        [TestMethod]
        public async Task NormalMemberReserveBookCanNotLoanOut()
        {
            try
            {
                var input = Input.TestCaseInput3();
                var inputItem = input.Item1;
                var inputMember = input.Item2;
                var inputBookStatusView = input.Item3;
                var inputLoanRequirement = input.Item4;                

                var controller = GetMockedLoanController(inputItem, inputMember, inputBookStatusView);

                IHttpActionResult response = await controller.LoanBookAsync(inputLoanRequirement).ConfigureAwait(false);

                OkNegotiatedContentResult<ReservationResult> result = (OkNegotiatedContentResult<ReservationResult>)response;

                ReservationResult output = new ReservationResult { ReservationBatchId = 1, ReservedItemIds = new int[] { 1 } };

                Assert.IsTrue(result.Content.Equals(output));
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }

        /* Private Method */

        private static LoanController GetMockedLoanController(Item inputItem, Member inputMember, BookStatusView inputBookStatusView)
        {
            var item = new Mock<IItemRepository>();
            item.Setup(i => i.GetItemIncludeStatus(It.IsAny<int>())).Returns(inputItem);
            item.Setup(i => i.GetAvailableSerialItemsAsync(It.IsAny<int>(), It.IsAny<string>())).ReturnsAsync(inputItem.SerialItems.ToList());
            item.Setup(i => i.GetReservedBooksAsync(It.IsAny<int>())).ReturnsAsync(1);


            var member = new Mock<IMemberRepository>();
            member.Setup(m => m.GetLibraryMemberAsync(1)).ReturnsAsync(inputMember);

            var book = new Mock<IBookRepository>();
            book.Setup(i => i.GetBookStatusAsync(It.IsAny<string>())).ReturnsAsync(inputBookStatusView);

            var reservation = new Mock<IReservationRepository>();
            reservation.Setup(i => i.AddRange(It.IsAny<List<Reservation>>()));

            var serialitem = new Mock<ISerialItemRepository>();
            serialitem.Setup(i => i.SaveRange(It.IsAny<List<SerialItem>>()));


            var contextHelper = new Mock<IContextHelper>();
            contextHelper.Setup(i => i.GetSequenceNoAsync(It.IsAny<string>())).ReturnsAsync(1);

            var mockedContext = new Mock<IContext>();
            mockedContext.Setup(c => c.Items).Returns(item.Object);
            mockedContext.Setup(c => c.ContextHelper).Returns(contextHelper.Object);
            mockedContext.Setup(c => c.Members).Returns(member.Object);
            mockedContext.Setup(c => c.Books).Returns(book.Object);
            mockedContext.Setup(c => c.Reservations).Returns(reservation.Object);
            mockedContext.Setup(c => c.SerialItems).Returns(serialitem.Object);
            return new LoanController(mockedContext.Object);
        }        
    }
}
