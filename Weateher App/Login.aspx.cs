using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Weateher_App
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string city = TextBox2.Text;
            Session["CityName"] = city; // Store in session temperorly
            Response.Redirect("Home.aspx");

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}