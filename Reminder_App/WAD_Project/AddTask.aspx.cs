using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WAD_Project
{
    public partial class AddTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query = "INSERT INTO ListDb (title,description,date,Uid) VALUES (@a1,@a2,@a3,@a4)";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        string Title = title.Value;
                        string Desc = desc.Value;
                        DateTime date = Convert.ToDateTime(tdate.Value);
                        int Number = Convert.ToInt32(Session["uid"]);
                        
                        cmd.Parameters.AddWithValue("@a1", Title);
                        cmd.Parameters.AddWithValue("@a2", Desc);
                        cmd.Parameters.AddWithValue("@a3", date);
                        cmd.Parameters.AddWithValue("@a4", Number);

                        cmd.Connection = con;
                        con.Open();
                       
                        cmd.ExecuteNonQuery();
                        con.Close();
                        using (MailMessage mail = new MailMessage())
                        {
                            try
                            {
                                mail.From = new MailAddress("manupatel20052002@gmail.com");
                                mail.To.Add(Session["useremail"].ToString());
                                mail.Subject = "Reminder of task!!";
                                mail.Body = "<h1>Task details:</h1><h2><br/>Title : " + Title + "<br/>Description : " + Desc + "<br/> Deadline : " + date + "</h2>";
                                mail.IsBodyHtml = true;

                                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                                {
                                    smtp.Credentials = new System.Net.NetworkCredential("manupatel20052002@gmail.com", "thnrhpcjnxjkenjq");
                                    smtp.EnableSsl = true;
                                    smtp.Send(mail);

                                }
                            }
                            catch (Exception ex)
                            {
                                Response.Write("<script>alert('" + ex.Message + "')</script>");
                            }

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Eroros: " + ex.Message);

            }
            Response.Redirect("Home_Page.aspx");

        }
    }
}