using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Models.Entity
{
    public struct Reservation
    {
        string reservationId;
        string itemType;
        string itemId;
        string userId;
        DateTime expireDate;
        DateTime processDate;
        DateTime pickupDate;
        string statue;
    }
}