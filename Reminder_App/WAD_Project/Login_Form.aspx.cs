using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Project
{
    public partial class Login_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void on_click(object sender, EventArgs e)
        {
            Response.Redirect("Registration_Form.aspx");
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query = "select * from UserDb where email=@email and password=@password";
            
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        string Email = email1.Value;
                        string pass = password1.Value;
                        cmd.Parameters.AddWithValue("@email", Email);
                        cmd.Parameters.AddWithValue("@password", pass);
                        cmd.Connection = con;
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        if (dt.Rows.Count == 0)
                        {
                            label1.Text = "Your email or password is incorrect";
                            label1.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            Session["useremail"] = dt.Rows[0][4].ToString();
                            Session["uid"] = Convert.ToInt32(dt.Rows[0][0].ToString());
                        //Response.Redirect("Login_Form.aspx");
                        Response.Redirect("Home_Page.aspx");
                        }
                            
                    }
                        
                }
        }
            
           
            

    }
}
