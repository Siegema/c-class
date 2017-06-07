using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelFinal
{
    public partial class rview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            //cancel reservation
            //Response.Redirect("default.aspx");
        }
    }
}