//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BookApp.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class OutsideReservation
    {
        public int Reserve_id { get; set; }
        public Nullable<int> Library_id { get; set; }
        public string External_id { get; set; }
        public string Batch_id { get; set; }
    
        public virtual Reservation Reservation { get; set; }
    }
}
