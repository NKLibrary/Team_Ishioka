//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VirtualCollege.Models.EntityFramework
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reservation
    {
        public int ReservationId { get; set; }
        public string ItemType { get; set; }
        public int ItemId { get; set; }
        public int UserId { get; set; }
        public System.DateTime ExpireDate { get; set; }
        public System.DateTime ProcessDate { get; set; }
        public System.DateTime PickupDate { get; set; }
        public string Status { get; set; }
    
        public virtual Member Member { get; set; }
    }
}