using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelFinal
{
    public partial class reservation : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {



        }

        protected void cont_Click(object sender, EventArgs e)
        {
            String s = Request.QueryString["field1"];
            string room = s;

            s = Request.QueryString["field2"];
            string size = s;

            s = Request.QueryString["field3"];
            string noBed = s;

            s = Request.QueryString["field4"];
            string price = s;
        

            Response.Redirect("receipt.aspx?field1="+name.Text
                +"&field2="+address.Text+"&field3="+city.Text
                +"&field4="+prov.Text+"&field5="+credit.Text
                +"&field6="+room+"&field7="+size+"&field8="+noBed
                +"&field9="+price);
        }
    }
}