using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data.SqlClient;

using System.Data;

using System.Configuration;

using System.Data;
using Microsoft.Extensions.Logging;
using Keyideasasp.Models;

namespace Keyideasasp.Services
{   
    public class Database 
    {
        // string cone = "Server=LAPTOP-JKUCGJLH; Database=Keyideas;Trusted_Connection=True;";
        ILogger log;
        public bool Validate(string username, string password)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
                con.Open();
                string Query = " SELECT CASE WHEN EXISTS (SELECT * FROM  UserTable  WHERE Username='" + username + "'AND Password='" + password + "') THEN CAST(1 AS BIT) ELSE CAST(0 AS BIT) END";
                SqlCommand cmd = new SqlCommand(Query, con);
                bool a = (bool)cmd.ExecuteScalar();
                return a ;
            }
            catch (Exception e)
            {
                log.LogCritical("validate user error  " + e);
                return false;
            
            
            }


        }


        public bool InsertRecord(Record r)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
                con.Open();
                string Query = " insert into UserTable values(@user,@email,@pass,@first,@last)";
                SqlCommand cmd = new SqlCommand(Query, con);

                cmd.Parameters.AddWithValue("@user", r.Username);
                cmd.Parameters.AddWithValue("@email", r.Email);
                cmd.Parameters.AddWithValue("@pass", r.Password);
                cmd.Parameters.AddWithValue("@first", r.FirstName);
                cmd.Parameters.AddWithValue("@last", r.Lastname);

                bool a =Convert.ToBoolean(cmd.ExecuteNonQuery());
                return a;
            }
            catch (Exception e)
            {
                log.LogCritical("insert user error  " + e);
                return false;


            }
        }
    }
}
