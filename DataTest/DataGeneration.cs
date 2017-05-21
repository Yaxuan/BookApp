using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using DataTest.Data;

namespace DataTest
{
    public class DataGeneration
    {
        private readonly DataContext _context = new DataContext();
        private readonly Random _random = new Random();
        //Simple data
        public void GenerateSimpleUserMemberData()
        {


            int memberNumber = 1;
            int userNumber = 1;

            //Create user
            for (int i = 0; i < userNumber; i++)
            {
                var user = new List<User>
                {
                    new User {User_id = i, Create_time = DateTime.Now, User_group_id = 1, User_name = "test " + i, Password = "pass" + i, FIrst_name = "first name " + i, Last_name = "last name " + i}
                };
                _context.Set<User>().AddRange(user);
            }

            //Create member
            for (int i = 0; i < memberNumber; i++)
            {
                var member = new List<Member>
                {
                    new Member {Member_id = i, Address = "Test address " + i, City = "Test city" + 1,
                    //Create normal member
                        NormalMember = new NormalMember
                        {
                        Member_id = i,
                        Member_type = 1,
                        Ssn = DateTime.Now.Millisecond.ToString(),
                        User_id = i,
                    } }
                };
                _context.Set<Member>().AddRange(member);
            }

            _context.SaveChanges();

        }

        //Real data
        public void GenerateData(int? memberNumber = 50, int? employeeNumber = 10, int? bookNumber = 100)
        {
            using (var context = new DataContext())
            {
                context.Configuration.AutoDetectChangesEnabled = false;

                using (var dbContextTransaction = context.Database.BeginTransaction())
                {
                    try
                    {
                        List<Permission> permissions = GeneratePermission(context);

                        List<UserGroup> userGroups = GenerateUserGroupAndPermission(context, permissions);

                        List<Loan_Rule> loanRules = GenerateLoanRule(context);

                        var normalMembers = GenerateNormalMember(context, userGroups, loanRules, memberNumber.Value);

                        var employees = GenerateEmployee(context, userGroups, employeeNumber.Value);

                        List<Location> locations = GenerateLocation(context);

                        var books = GenerateBook(context, bookNumber.Value, locations);

                        GenerateOtherItems(context, locations);

                        GenerateReservation(context, normalMembers, books, bookNumber.Value);

                        dbContextTransaction.Commit();
                    }
                    catch (Exception e)
                    {
                        dbContextTransaction.Rollback();
                        throw e;
                    }
                }

            }
        }

        private List<Loan_Rule> GenerateLoanRule(DataContext context)
        {
            List<Loan_Rule> loanRules = new List<Loan_Rule>
            {
                new Loan_Rule {Grace_day = 7, Mail_choice = 1, Max_loan_book = 5, Max_loan_day = 28, Notification_day = 7, Rule_name ="Normal" },
                new Loan_Rule {Grace_day = 14, Mail_choice = 2, Max_loan_book = 5, Max_loan_day = 84, Notification_day = 7, Rule_name = "Professor" }
            };

            context.Set<Loan_Rule>().AddRange(loanRules);
            context.SaveChanges();

            return loanRules;
        }

        private void GenerateOtherItems(DataContext context, List<Location> locations)
        {
            List<Item> items = new List<Item>();

            for (int i = 0; i < 20; i++)
            {
                Item item = new Item { Create_time = DateTime.Now, Item_type = _random.Next(2, 3), Subject = _random.Next(1, 10) }; //Item type: book, subjec 1-10

                items.Add(item);
            }

            context.Set<Item>().AddRange(items);
            context.SaveChanges();
        }

        private void GenerateReservation(DataContext context, List<Member> members, Tuple<List<Item>, List<ItemStatu>, List<SerialItem>> books, int bookNumber)
        {
            List<Reservation> reservations = new List<Reservation>();
            List<ItemStatu> modifiedStatus = new List<ItemStatu>();
            List<SerialItem> modifiedSerialItems = new List<SerialItem>();

            int reservationNumber = members.Count * 2;

            var items = books.Item1;
            var itemStatus = books.Item2;
            var serialItems = books.Item3;

            for (int i = 0; i < reservationNumber; i++)
            {
                var serialItem = serialItems.FirstOrDefault(s => s.Library_status == 1 && s.Serial_item_status == 1);

                if (serialItem != null)
                {
                    ItemStatu status = itemStatus.First(s => s.Item_id == serialItem.Item_id);

                    if (status.Total_copy - status.Reserved_copy > 0)
                    {
                        DbRawSqlQuery<long> rawQuery = context.Database.SqlQuery<long>("SELECT NEXT VALUE FOR dbo.BatchId_Seq;");
                        var batchId = rawQuery.SingleAsync().Result;

                        Reservation reservation = new Reservation
                        {
                            InsideReservation = new InsideReservation { Serial_item_id = serialItem.Serial_item_id, Batch_id = Convert.ToInt32(batchId) },
                            Batch_id = Convert.ToInt32(batchId),
                            Member_id = members[i % members.Count].Member_id,
                            Reserve_time = DateTime.Now.Date.AddDays(-_random.Next(7)),
                            Pickup_method = (short)_random.Next(1, 2),
                            Status = 1,
                            Expected_return_date = DateTime.Now.Date.AddDays(members[i % members.Count].Loan_Rule.Max_loan_day)
                        };
                        reservations.Add(reservation);

                        status.Reserved_copy += 1;
                        modifiedStatus.Add(status);

                        context.Set<ItemStatu>().Attach(status);
                        context.Entry(status).State = EntityState.Modified;

                        serialItem.Library_status = 2;
                        modifiedSerialItems.Add(serialItem);

                        context.Set<SerialItem>().Attach(serialItem);
                        context.Entry(serialItem).State = EntityState.Modified;
                    }
                }

            }

            context.Set<Reservation>().AddRange(reservations);
            context.SaveChanges();
        }

        public void GenerateReservation()
        {
            using (var context = new DataContext())
            {
                context.Configuration.AutoDetectChangesEnabled = false;

                using (var dbContextTransaction = context.Database.BeginTransaction())
                {
                    try
                    {
                        var itemStatus = context.Set<ItemStatu>().OrderBy(i => i.Item_id).ToList();
                        var serialItems = context.Set<SerialItem>().OrderBy(i => i.Item_id).ToList();
                        var members = context.Set<Member>().ToList();

                        List<Reservation> reservations = new List<Reservation>();

                        for (int i = 0; i < 32000; i++)
                        {
                            var serialItem =
                                serialItems.FirstOrDefault(s => s.Library_status == 1 && s.Serial_item_status == 1);

                            if (serialItem != null)
                            {
                                ItemStatu status = itemStatus.First(s => s.Item_id == serialItem.Item_id);

                                if (status.Total_copy - status.Reserved_copy > 0)
                                {
                                    DbRawSqlQuery<long> rawQuery =
                                        context.Database.SqlQuery<long>("SELECT NEXT VALUE FOR dbo.BatchId_Seq;");
                                    var batchId = rawQuery.SingleAsync().Result;

                                    Reservation reservation = new Reservation
                                    {
                                        InsideReservation =
                                            new InsideReservation
                                            {
                                                Serial_item_id = serialItem.Serial_item_id,
                                                Batch_id = Convert.ToInt32(batchId)
                                            },
                                        Batch_id = Convert.ToInt32(batchId),
                                        Member_id = members[i % members.Count].Member_id,
                                        Reserve_time = DateTime.Now.Date.AddDays(-_random.Next(7)),
                                        Pickup_method = (short) _random.Next(1, 2),
                                        Status = 1,
                                        Expected_return_date =
                                            DateTime.Now.Date.AddDays(members[i % members.Count].Loan_Rule.Max_loan_day)
                                    };
                                    reservations.Add(reservation);

                                    status.Reserved_copy += 1;

                                    context.Set<ItemStatu>().Attach(status);
                                    context.Entry(status).State = EntityState.Modified;

                                    serialItem.Library_status = 2;

                                    context.Set<SerialItem>().Attach(serialItem);
                                    context.Entry(serialItem).State = EntityState.Modified;
                                }
                            }
                        }

                        context.Set<Reservation>().AddRange(reservations);
                        context.SaveChanges();

                        dbContextTransaction.Commit();
                    }
                    catch (Exception e)
                    {
                        dbContextTransaction.Rollback();
                        throw e;
                    }
                }

            }
        }

        private Tuple<List<Item>, List<ItemStatu>, List<SerialItem>> GenerateBook(DataContext context, int bookNumber, List<Location> locations)
        {
            List<Item> items = new List<Item>();
            List<Book> books = new List<Book>();
            List<ItemStatu> itemStatus = new List<ItemStatu>();
            List<SerialItem> serialItems = new List<SerialItem>();
            List<Author> authors = GenerateAuthor(context, bookNumber);

            List<string> isbnList = GenerateIsbn(bookNumber);

            int canNotLoanOutNumber = (int)Math.Round(bookNumber * 0.05);

            //Create item
            for (int i = 0; i < bookNumber; i++)
            {
                Item item = new Item { Create_time = DateTime.Now, Item_type = 1, Subject = _random.Next(1, 10) }; //Item type: book, subjec 1-10

                items.Add(item);
            }

            context.Set<Item>().AddRange(items);
            context.SaveChanges();

            //Create book
            for (int i = 0; i < bookNumber; i++)
            {
                var authorList = new List<Author>();

                if (i < bookNumber / 2)
                {
                    authorList.Add(authors[_random.Next(authors.Count - 1)]);
                }

                authorList.Add(authors[_random.Next(authors.Count - 1)]);

                var book = new Book
                {
                    Isbn = isbnList[i],
                    Authors = authorList,
                    Language = 1, //English
                    Binding = 1, //Paper
                    Edition = "Segunda",
                    Description = "Breaking the cycle -- What do mathematicians do? -- Mathematicians take risks -- Mathematicians make mistakes -- Mathematicians are precise -- Mathematicians rise to a challenge -- Mathematicians ask questions -- Mathematicians connect ideas -- Mathematicians use intuition -- Mathematicians reason -- Mathematicians prove -- Mathematicians work together and alone -- \"Favorable conditions\" for all math students",
                    Item_id = items[i].Item_id,
                    Page = _random.Next(129, 4000),
                    Price = _random.Next(128, 2500),
                    Price_unit = "kr",
                    Publish_time = DateTime.Now.Date.AddDays(-_random.Next(365, 36500)),
                    Publisher = "Ediciones Corregidor",
                    Title = NameList.OneHundredBookList[i % 100] + i
                };

                books.Add(book);


                var status = new ItemStatu
                {
                    Checkout_copy = 0,
                    Damaged_copy = 0,
                    Item_id = items[i].Item_id,
                    Missing_copy = 0,
                    Reserved_copy = 0,
                    Total_copy = bookNumber % 10 != 9 ? (short)_random.Next(1, 3) : (short)0,
                    Can_loan_out = i > canNotLoanOutNumber,
                    Location_id = locations[i % locations.Count].Location_id
                };

                itemStatus.Add(status);

                for (int j = 0; j < status.Total_copy; j++)
                {
                    SerialItem serialItem = new SerialItem
                    {
                        Item_id = items[i].Item_id,
                        Location_id = status.Location_id,
                        Library_status = 1, //In Library
                        Serial_item_status = 1 //Not damaged,
                    };
                    serialItems.Add(serialItem);
                }

            }

            context.Set<Book>().AddRange(books);
            context.SaveChanges();

            context.Set<ItemStatu>().AddRange(itemStatus);
            context.SaveChanges();

            context.Set<SerialItem>().AddRange(serialItems);
            context.SaveChanges();

            return Tuple.Create(items, itemStatus, serialItems);
        }

        private List<Author> GenerateAuthor(DataContext context, int bookNumber)
        {
            var firstNameList = NameList.BoyFirstNameList.Concat(NameList.GirlFirstNameList).ToList();
            List<Author> authors = new List<Author>();

            int maxNumber = bookNumber > 10000 ? 10000 : bookNumber;

            for (int i = 0; i < maxNumber; i++)
            {
                Author author = new Author()
                {
                    Birthday = DateTime.Now.Date.AddDays(-_random.Next(7300, 36500)),
                    Last_name = NameList.LastNameList[_random.Next(999)],
                    First_name = firstNameList[_random.Next(1990)],
                    Country = NameList.CountryList[_random.Next(19)]
                };

                authors.Add(author);
            }

            context.Set<Author>().AddRange(authors);
            context.SaveChanges();

            return authors;
        }

        private List<string> GenerateIsbn(int bookNumber)
        {
            List<string> isbnList = new List<string>();

            string number = "1508651636";
            for (int i = 0; i < bookNumber; i++)
            {
                string isbn = number.Substring(0, 2) + "-" + number.Substring(2, 5) + "-" + number.Substring(7, 2) + "-" +
                              number.Substring(9, 1);

                isbnList.Add(isbn);

                number = (long.Parse(number) + 1).ToString();
            }

            return isbnList;
        }

        private List<Location> GenerateLocation(DataContext context)
        {
            List<Location> locations = new List<Location>();
            //20 rooms
            for (int i = 1; i <= 20; i++)
            {
                //20 shelfs
                for (int j = 1; j <= 20; j++)
                {
                    //x = 3
                    for (int k = 1; k <= 3; k++)
                    {
                        //y = 10
                        for (int l = 1; l <= 10; l++)
                        {
                            var location = new Location()
                            {
                                Room_no = i,
                                Shelf_no = j,
                                X = k,
                                Y = l,
                                Location_code = "Room" + i + "-" + "Shelf" + j + "-" + "X" + k + "-" + "Y" + l
                            };

                            locations.Add(location);
                        }
                    }
                }
            }

            var receptionPickupLocation = new Location
            {
                Room_no = 9000,
                Shelf_no = 1,
                X = 1,
                Y = 1,
                Location_code = "Room" + 9000 + "-" + "Shelf" + 1 + "-" + "X" + 1 + "-" + "Y" + 1
            };

            var receptionReturnLocation = new Location
            {
                Room_no = 9000,
                Shelf_no = 2,
                X = 1,
                Y = 1,
                Location_code = "Room" + 9000 + "-" + "Shelf" + 2 + "-" + "X" + 1 + "-" + "Y" + 1
            };

            locations.Add(receptionPickupLocation);
            locations.Add(receptionReturnLocation);

            context.Set<Location>().AddRange(locations);
            context.SaveChanges();

            return locations;
        }

        private Tuple<List<User>, List<Employee>> GenerateEmployee(DataContext context, List<UserGroup> userGroups, int employeeNumber = 10)
        {
            List<User> users = new List<User>();
            List<Employee> employees = new List<Employee>();

            for (int i = 0; i < employeeNumber; i++)
            {
                User user = CreateUser(userGroups, (int)(employeeNumber * 0.7), "employee", i);

                if (i == 0)
                {
                    user.User_group_id = userGroups.First(u => u.Group_name == "SuperAdmin").User_group_id;
                }
                else if (i <= 2)
                {
                    user.User_group_id = userGroups.First(u => u.Group_name == "Admin").User_group_id;
                }
                else if (i < 10)
                {
                    user.User_group_id = userGroups.First(u => u.Group_name == "BookAdmin").User_group_id;
                }
                else
                {
                    user.User_group_id = userGroups.First(u => u.Group_name == "LoanAdmin").User_group_id;
                }

                users.Add(user);
            }

            context.Set<User>().AddRange(users);
            context.SaveChanges();

            for (int i = 0; i < employeeNumber; i++)
            {
                Employee employee = new Employee
                {
                    User_id = users[i].User_id,
                    Work_phone = "42" + _random.Next(100000, 999999),
                    Position = (short)_random.Next(1, 5)
                };

                employees.Add(employee);
            }

            context.Set<Employee>().AddRange(employees);
            context.SaveChanges();

            return Tuple.Create(users, employees);
        }


        public void GenerateNormalMember()
        {
            using (var context = new DataContext())
            {
                context.Configuration.AutoDetectChangesEnabled = false;

                using (var dbContextTransaction = context.Database.BeginTransaction())
                {
                    try
                    {
                        List<UserGroup> userGroups = context.Set<UserGroup>().ToList();
                        List<Loan_Rule> loanRules = context.Set<Loan_Rule>().ToList();

                        GenerateNormalMember(context, userGroups, loanRules, 4000);

                        dbContextTransaction.Commit();
                    }
                    catch (Exception e)
                    {
                        dbContextTransaction.Rollback();
                        throw e;
                    }
                }
            }
        }

        private List<Member> GenerateNormalMember(DataContext context, List<UserGroup> userGroups, List<Loan_Rule> loanRules, int memberNumber = 50)
        {
            List<User> users = new List<User>();
            List<Member> members = new List<Member>();
            List<NormalMember> normalMembers = new List<NormalMember>();

            int femaleNumber = (int)(memberNumber * 0.4);
            int campusAddressNumber = (int)Math.Ceiling(memberNumber * 0.001);
            int professorNumber = (int)Math.Ceiling(campusAddressNumber * 0.02);

            for (int i = 0; i < memberNumber; i++)
            {
                User user = CreateUser(userGroups, femaleNumber, "normal_", i);

                users.Add(user);
            }

            context.Set<User>().AddRange(users);
            context.SaveChanges();



            for (int i = 0; i < memberNumber; i++)
            {
                Member member = new Member
                {
                    Address = NameList.StreetNameList[_random.Next(399)] + " " + _random.Next(99),
                    City = "Aalborg",
                    Post_code = _random.Next(1000, 9999),
                    Loan_rule_id = i < professorNumber ? loanRules.Last().Loan_rule_id : loanRules.First().Loan_rule_id,
                    Loan_Rule = i < professorNumber ? loanRules.Last() : loanRules.First()
                };

                members.Add(member);
            }

            context.Set<Member>().AddRange(members);
            context.SaveChanges();

            for (int i = 0; i < memberNumber; i++)
            {
                NormalMember normalMember = new NormalMember()
                {
                    Member_id = members[i].Member_id,
                    Ssn = _random.Next(100000000, 999999999).ToString(),
                    User_id = users[i].User_id,
                    Member_type = 1,

                };

                if (i < campusAddressNumber)
                {
                    normalMember.MemberCampusAddress = new MemberCampusAddress()
                    {
                        Member_id = members[i].Member_id,
                        Campus_Address = NameList.StreetNameList[_random.Next(399)] + " " + _random.Next(99) + " " + _random.Next(1000, 9999) + " Aalborg"
                    };

                    if (i < professorNumber)
                    {
                        //Professor
                        normalMember.Member_type = 2;
                    }
                }

                normalMembers.Add(normalMember);

                members[i].NormalMember = normalMember;
            }

            context.Set<NormalMember>().AddRange(normalMembers);
            context.SaveChanges();

            return members.Where(m => m.NormalMember != null).Skip((int)(memberNumber * 0.2)).ToList();
        }

        private User CreateUser(List<UserGroup> userGroups, int femaleNumber, string userNamePrefix, int i, string userGroupName = "Default")
        {
            User user = new User();

            if (i < femaleNumber)
            {
                user.Is_Female = true;
                user.FIrst_name = NameList.GirlFirstNameList[_random.Next(999)];
            }
            else
            {
                user.Is_Female = false;
                user.FIrst_name = NameList.BoyFirstNameList[_random.Next(999)];
            }

            user.User_name = userNamePrefix + i;

            user.Last_name = NameList.LastNameList[_random.Next(999)];

            user.Password = "1234";

            user.Create_time = DateTime.Now.AddDays(-_random.Next(1460)); //four years

            user.User_group_id = userGroups.First(u => u.Group_name == userGroupName).User_group_id;

            user.Email = user.FIrst_name + user.Last_name + i % 1000 + "@gmail.com";

            return user;
        }

        private static List<UserGroup> GenerateUserGroupAndPermission(DataContext context, List<Permission> permissions)
        {
            var userGroups = new List<UserGroup>
            {
                new UserGroup {Group_name = "Default"},
                new UserGroup
                {
                    Group_name = "BookAdmin",
                    Permissions = permissions.Where(p => p.Action == "UpdateBook").ToList()
                },
                new UserGroup
                {
                    Group_name = "LoanAdmin",
                    Permissions = permissions.Where(p => p.Action == "UpdateLoan" || p.Action == "UpdateBook").ToList()
                },
                new UserGroup
                {
                    Group_name = "Admin",
                    Permissions = permissions.Where(p => p.Action != "UpdateUser").ToList()
                },
                new UserGroup
                {
                    Group_name = "SuperAdmin",
                    Permissions = permissions
                },
            };

            context.Set<UserGroup>().AddRange(userGroups);
            context.SaveChanges();
            return userGroups;
        }



        private static List<Permission> GeneratePermission(DataContext context)
        {
            var permissions = new List<Permission>
            {
                new Permission {Action = "UpdateBook"},
                new Permission {Action = "UpdateUser"},
                new Permission {Action = "UpdateMember"},
                new Permission {Action = "UpdateLoan"}
            };
            context.Set<Permission>().AddRange(permissions);
            context.SaveChanges();

            return permissions;
        }

        public void TearDownData()
        {
            var insideReservations = _context.Set<InsideReservation>().ToList();
            var reservations = _context.Set<Reservation>().ToList();
            var serialItems = _context.Set<SerialItem>().ToList();
            var itemStatus = _context.Set<ItemStatu>().ToList();
            var books = _context.Set<Book>().ToList();
            var items = _context.Set<Item>().ToList();
            var locations = _context.Set<Location>().ToList();
            var campusAddress = _context.Set<MemberCampusAddress>().ToList();
            var normalMembers = _context.Set<NormalMember>().ToList();
            var members = _context.Set<Member>().ToList();
            var employees = _context.Set<Employee>().ToList();
            var users = _context.Set<User>().ToList();
            var userGroups = _context.Set<UserGroup>().ToList();
            var permissions = _context.Set<Permission>().ToList();
            var loanRules = _context.Set<Loan_Rule>().ToList();

            _context.Set<InsideReservation>().RemoveRange(insideReservations);
            _context.SaveChanges();

            _context.Set<Reservation>().RemoveRange(reservations);
            _context.SaveChanges();

            _context.Set<SerialItem>().RemoveRange(serialItems);
            _context.SaveChanges();

            _context.Set<ItemStatu>().RemoveRange(itemStatus);
            _context.SaveChanges();

            _context.Set<Book>().RemoveRange(books);
            _context.SaveChanges();

            _context.Set<Item>().RemoveRange(items);
            _context.SaveChanges();

            _context.Set<Location>().RemoveRange(locations);
            _context.SaveChanges();

            _context.Set<MemberCampusAddress>().RemoveRange(campusAddress);
            _context.SaveChanges();

            _context.Set<NormalMember>().RemoveRange(normalMembers);
            _context.SaveChanges();

            _context.Set<Member>().RemoveRange(members);
            _context.SaveChanges();

            _context.Set<Employee>().RemoveRange(employees);
            _context.SaveChanges();

            _context.Set<User>().RemoveRange(users);
            _context.SaveChanges();

            _context.Set<UserGroup>().RemoveRange(userGroups);
            _context.SaveChanges();

            _context.Set<Permission>().RemoveRange(permissions);
            _context.SaveChanges();

            _context.Set<Loan_Rule>().RemoveRange(loanRules);
            _context.SaveChanges();
        }
    }
}
