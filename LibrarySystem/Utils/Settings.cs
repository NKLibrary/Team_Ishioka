using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VirtualCollege.Utils
{
    public static class Settings
    {
        public enum ReserveStatus
        {
            Pending,
            Processed,
            Close,
            Cancel
        }
    }
}