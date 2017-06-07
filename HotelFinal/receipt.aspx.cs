    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Data;
    using System.Data.SqlClient;

    namespace HotelFinal
    {
        public partial class receipt : System.Web.UI.Page
        {
            string connetionString = null;
            SqlConnection cnn;
            SqlCommand command;
            protected void Page_Load(object sender, EventArgs e)
            {
            //changing labels to passed values
                connetionString = "Data Source=SIEGEMA;Initial Catalog=Hotel;Integrated Security=SSPI;Persist Security Info=false";
                cnn = new SqlConnection(connetionString);

                String s = Request.QueryString["field1"];
                name.Text = s;

                s = Request.QueryString["field2"];
                add.Text = s;

                s = Request.QueryString["field3"];
                city.Text = s;

                s = Request.QueryString["field4"];
                prov.Text = s;

                s = Request.QueryString["field5"];
                card.Text = s;

                s = Request.QueryString["field6"];
                lblRoom.Text = s;

                s = Request.QueryString["field7"];
                string size = s;

                s = Request.QueryString["field8"];
                string noBed = s;

                s = Request.QueryString["field9"];
                lblPrive.Text = s;
        }


    
            public void MsgBox(String msg)
            {
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'>alert('" + msg + "')</script>");
            }

        protected void btn_Click(object sender, EventArgs e)
        {
            try
            {
                cnn.Open();
                command = new SqlCommand("INSERT INTO dbo.customer VALUES(@name,@address,@city,@prov)", cnn);
                command.Parameters.AddWithValue("@name", this.name.Text);
                command.Parameters.AddWithValue("@address", this.add.Text);
                command.Parameters.AddWithValue("@city", this.city.Text);
                command.Parameters.AddWithValue("@prov", this.prov.Text);
                int r = command.ExecuteNonQuery();
                MsgBox(r + " customer record added");
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
            Response.Redirect("default.aspx");
        }
    }
  
}
 