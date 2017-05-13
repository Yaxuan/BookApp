using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using BookApp.CustomException;
using BookApp.DataAccess.Interface;
using BookApp.Models;

namespace BookApp.Controllers
{
    public class LoanController : ApiController
    {
        private readonly IContext _context;

        public LoanController(IContext context)
        {
            _context = context;
        }

        // GET: api/books
        [HttpPost]
        [Route("api/LibraryLoan")]  //AFD1EF6E-7E36-E711-BEAF-001FD0D391F6
        [ResponseType(typeof(ReservationResult))]
        public async Task<IHttpActionResult> LoanBookFromOtherLibraryAsync(LoanRequirement loanRequirement)
        {
            try
            {
                if (!ModelState.IsValid || loanRequirement.CopyNumber <= 0)
                {
                    return BadRequest(ModelState);
                }

                var member = await _context.Members.GetLibraryMemberAsync(loanRequirement.MemberId).ConfigureAwait(false);

                if (member == null)
                {
                    throw new MemberNotFoundException("Member not found");
                }

                using (var dbContextTransaction = _context.BeginTransaction())
                {

                    var availItems = await _context.Items.GetAvailableSerialItemsAsync(loanRequirement.CopyNumber,
                        loanRequirement.Isbn).ConfigureAwait(false);

                    if (availItems?.Count >= loanRequirement.CopyNumber)
                    {
                        int batchId = Convert.ToInt32(await _context.Items.GetSequenceNoAsync("BatchId_Seq").ConfigureAwait(false));

                        List<Reservation> reservations = new List<Reservation>();
                        List<SerialItem> serialItems = new List<SerialItem>();

                        for (int i = 0; i < loanRequirement.CopyNumber; i++)
                        {
                            Reservation reservation = new Reservation
                            {

                                InsideReservation = new InsideReservation { Serial_item_id = availItems[i].Serial_item_id, Batch_id = batchId },
                                Batch_id = Convert.ToInt32(batchId),
                                Member_id = member.Member_id,
                                Reserve_time = DateTime.Now,
                                Pickup_method = 1,
                                Status = 1,
                                Expected_return_date = member.Loan_Rule.Max_loan_day == null ? (DateTime?)null : DateTime.Now.Date.AddDays(member.Loan_Rule.Max_loan_day.Value)
                            };

                            reservations.Add(reservation);

                            availItems[i].Library_status = 2;
                            serialItems.Add(availItems[i]);
                        }

                        _context.Reservations.AddRange(reservations);

                        _context.SerialItems.SaveRange(serialItems);

                        dbContextTransaction.Commit();

                        var result = new ReservationResult
                        {
                            ReservationBatchId = batchId,
                            ReservedItemIds = serialItems.Select(s => s.Serial_item_id).ToArray()
                        };

                        return Ok(result);
                    }
                    else
                    {
                        throw new BookNotAvailableException("Not enough books for loan");
                    }

                }
            }
            catch (MemberNotFoundException e)
            {
                return Content(HttpStatusCode.NonAuthoritativeInformation, e.Message);
            }
            catch (DbUpdateConcurrencyException)
            {
                return Content(HttpStatusCode.Conflict, "Data has been modified, try again");
            }
            catch (Exception e)
            {
                return Content(HttpStatusCode.InternalServerError, e.Message);
            }
        }
    }
}
