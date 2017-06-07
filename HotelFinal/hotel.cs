using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelFinal
{
    public class hotel
    {
        short roomNo;
        short noBed;
        string sizeBed;
        short custId;
        char avail;
        DateTime sdate;
        DateTime edate;
        float price;

        public hotel(short roomNo, short noBed, string sizeBed, float price)
        {
            this.roomNo = roomNo;
            this.noBed = noBed;
            this.sizeBed = sizeBed;
            this.price = price;
        }

        public string MyProperty { get; set; }
    }

}