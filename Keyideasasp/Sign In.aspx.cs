using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Keyideasasp.Models;
using Keyideasasp.Services;

namespace Keyideasasp
{
    public partial class Sign_In : System.Web.UI.Page
    {
        public Database database = new Database();
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = Username.Text;
            string pass = Password.Text;

           bool match= database.Validate(user, pass);
            if (match)
            {
                Response.Redirect("Dashboard.html");
            }

            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Please Enter Correct Userrname/Password" + "');", true);


            }



        }
    }
}