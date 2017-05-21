using System.Collections.Generic;

namespace BookClient.Models
{
    public class UserGroup
    {
        public short User_group_id { get; set; }

        public string Group_name { get; set; }

        public virtual ICollection<Permission> Permissions { get; set; }
    }
}