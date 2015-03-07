using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Models.Entity
{
    public struct Reservation
    {
        public string reservationId;
        public string itemType;
        public string itemId;
        public string userId;
        public DateTime expireDate;
        public DateTime processDate;
        public DateTime pickupDate;
        public string status;
    }
}