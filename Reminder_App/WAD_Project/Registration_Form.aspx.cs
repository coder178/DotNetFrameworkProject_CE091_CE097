using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Project
{
    public partial class Registration_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query = "INSERT INTO UserDb (usename,password,name,email,contact_no) VALUES (@a1,@a2,@a3,@a4,@a5)";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        string Username = username.Value;
                        string pass = password.Value;
                        string Name = name.Value;
                        string Email = email.Value;
                        string Number = contact.Value;
                        Response.Write(Username);
                        cmd.Parameters.AddWithValue("@a1", Username);
                        cmd.Parameters.AddWithValue("@a2", pass);
                        cmd.Parameters.AddWithValue("@a3", Name);
                        cmd.Parameters.AddWithValue("@a4", Email);
                        cmd.Parameters.AddWithValue("@a5", Number);

                        cmd.Connection = con;
                        con.Open();
                       
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Eroros: " + ex.Message);

            }
            Response.Redirect("Login_Form.aspx");


        }
        protected void on_click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Form.aspx");
        }

      
    }
}