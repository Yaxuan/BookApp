using System;

namespace BookClient.Models
{
    public class User
    {
        public string User_name { get; set; }
        public int User_id { get; set; }
        public string Password { get; set; }
        public DateTime Create_time { get; set; }
        public short User_group_id { get; set; }
        public string FIrst_name { get; set; }
        public string Last_name { get; set; }
        public bool Is_Female { get; set; }
    }
}