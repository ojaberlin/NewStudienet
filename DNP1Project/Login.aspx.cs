using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DNP1Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           // Session["studentApproved"] = "false";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DataSource"].ConnectionString);
            con.Open();
            string query = "SELECT role FROM [User] WHERE email = @val1 AND password = @val2";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@val1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@val2", TextBox2.Text);
            string result = cmd.ExecuteScalar().ToString();
            Button1.Text = result; 

            if (result.Equals("student"))
            {
                Session["studentApproved"] = "true";
                Response.Redirect("Student.aspx");


            }

            else
            {
                Response.Redirect("Teacher.aspx");

            }
        }
    }
}