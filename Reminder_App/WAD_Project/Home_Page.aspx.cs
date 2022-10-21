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
    public partial class Home_Page : System.Web.UI.Page
    {
        DataSet ds,ds1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowTasks();
                ShowUserDetails();
            }

        }
        public void ShowUserDetails()
        {
            string uid = Session["uid"].ToString();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query1 = "select * from UserDb where Id = @uid";
            
            try
            {
                using (con)
                {
                    using (SqlCommand cmd1 = new SqlCommand(query1))
                    {

                        cmd1.Parameters.AddWithValue("@uid", uid);
                        cmd1.Connection = con;
                        SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                        ds1 = new DataSet();

                        con.Open();
                        cmd1.ExecuteNonQuery();
                        sda1.Fill(ds1, "ListDb");
                        UserLV.DataSource = ds1.Tables["ListDb"];
                        UserLV.DataSourceID = null;
                        UserLV.DataBind();

                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("Erros: " + ex.Message);

            }

        }

        protected void addBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddTask.aspx");
        }

        protected void delete(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(((Label)TasksDL.Items[e.Item.ItemIndex].FindControl("idlabel")).Text.ToString());
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query = "delete from ListDb where Id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ShowTasks();
        }

        protected void edit(object source, DataListCommandEventArgs e)
        {
            TasksDL.EditItemIndex = e.Item.ItemIndex;
            ShowTasks();
            
        }

        protected void update(object source, DataListCommandEventArgs e)
        {
            int id = Convert.ToInt32(((Label)TasksDL.Items[e.Item.ItemIndex].FindControl("Label1")).Text.ToString());
            string title = ((TextBox)TasksDL.Items[e.Item.ItemIndex].FindControl("TextBox1")).Text.ToString();
            string desc = ((TextBox)TasksDL.Items[e.Item.ItemIndex].FindControl("TextBox2")).Text.ToString();
            DateTime date = Convert.ToDateTime(((TextBox)TasksDL.Items[e.Item.ItemIndex].FindControl("TextBox3")).Text.ToString());
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query = "update ListDb set title=@Title, description=@Desc, date=@Date where Id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Title", title);
            cmd.Parameters.AddWithValue("@Desc", desc);
            cmd.Parameters.AddWithValue("@Date", date);
           
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TasksDL.EditItemIndex = -1;
            ShowTasks();

        }

        protected void cancel(object source, DataListCommandEventArgs e)
        {
            TasksDL.EditItemIndex = -1;
            ShowTasks();
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login_Form.aspx");
        }

        public void ShowTasks()
        {
            string uid = Session["uid"].ToString();
          
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            string query = "select * from ListDb where Uid = @uid";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@uid", uid);
                        cmd.Connection = con;
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        ds = new DataSet();

                        con.Open();
                        cmd.ExecuteNonQuery();
                        sda.Fill(ds, "ListDb");
                        TasksDL.DataSource = ds.Tables["ListDb"];
                        TasksDL.DataSourceID = null;

                        TasksDL.DataBind();


                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("Errors: " + ex.Message);

            }
        }
    }
}