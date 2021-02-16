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
    public partial class Register : System.Web.UI.Page
    {   Record r = new Record();
        Database database = new Database();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (pass.Text.Equals(cpass.Text))
            {

                r.Username = username.Text;
                r.Password = pass.Text;
                r.Email = EmailID.Text;
                r.FirstName = FirstName.Text;
                r.Lastname = LastName.Text;
              bool result=  database.InsertRecord(r);
                if (result)
                {
                    Response.Redirect("Dashboard.html");
                }
                else
                { 
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Please Enter Unique Username" + "');", true);

                }

            }
            else { 
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Please Enter Same Password for both the fields" + "');", true);

            }
        }
    }
}