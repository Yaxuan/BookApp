using System;
using System.Collections.Generic;

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
        public string Email { get; set; }

        public virtual Employee Employee { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NormalMember> NormalMembers { get; set; }
        public virtual UserGroup UserGroup { get; set; }
    }
}