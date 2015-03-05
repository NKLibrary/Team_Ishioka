using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace VirtualCollege.View.Controls
{
    [ValidationProperty("Text")]
    public class VCalendar : System.Web.UI.WebControls.Calendar
    {
        public string Text
        {
            get
            {
                //string dateString = this.SelectedDate.ToString("yyyy/MM/dd");
                //if (dateString.Equals("0001/01/01") || dateString.Equals("0001-01-01"))
                //{
                //    return "";
                //}
                //return dateString;

                // simply return the same value, just add the server-side validation support
                return this.SelectedDate.ToShortDateString();
            }
        }
    }
}