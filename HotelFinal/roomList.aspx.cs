using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelFinal
{
    public partial class roomList : System.Web.UI.Page
    {
        SqlConnection cnn;
        SqlCommand command;
        string connetionString = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            connetionString = "Data Source=SIEGEMA;Initial Catalog=Hotel;Integrated Security=SSPI;Persist Security Info=false";
            cnn = new SqlConnection(connetionString);
            try
            {

                cnn.Open();
                command = new SqlCommand("Select roomNo, noBed, sizeBed FROM dbo.Room WHERE avail = 'y')", cnn);

                int r = command.ExecuteNonQuery();
                MsgBox(r + " Book record added");
                cnn.Close();
            }
            catch (SqlException ex)
            {

                MsgBox("Error in SQL! " + ex.Message);
            }
            finally
            {

                if (cnn.State == ConnectionState.Open) { cnn.Close(); }
            }
        }
        public void MsgBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box",
                 "<script language='javascript'>alert('" + msg + "')</script>");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void book_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void button_Click(object sender, EventArgs e)
        {
            Button item1 = (Button)sender;
            GridViewRow Row = (GridViewRow)item1.NamingContainer;
            TableCellCollection cell = Row.Cells;

            //binding button through dictionary

            var rowItems = new Dictionary<string, string>
            {
                { "roomNo", cell[0].Text },
                { "noBed", cell[1].Text },
                { "sizeBed", cell[2].Text },
                { "price",  cell[3].Text }
            };


            string room = rowItems["roomNo"];
            string size = rowItems["sizeBed"];
            string noBed = rowItems["noBed"];
            string price = rowItems["price"];

            //passing user input to next page
            Response.Redirect("reservation.aspx?field1=" + room +
                "&field2="+size+"&field3="+noBed+"&field4="+price);
        }
    }
}