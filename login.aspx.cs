using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //    string htmlFilePath = Server.MapPath("~/login.html");
        //    string htmlContent = File.ReadAllText(htmlFilePath);
        //    Response.Write(htmlContent);
        //}
    }
   
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
        string id = Request.Form["exampleInputId"];
        string username = Request.Form["exampleInputUsername2"];
        string password = Request.Form["exampleInputPassword1"];
        string role = ddlRole.SelectedValue;

        SqlConnection con = new SqlConnection("");
        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE username = @username AND password = @password AND role = @role", con);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);
        cmd.Parameters.AddWithValue("@role", role);
        con.Open();

        int result = (int)cmd.ExecuteScalar();
        con.Close();

        if (result > 0)
        {
            if (role == "student")
            {
                Response.Redirect("StudentDashboard.aspx");
            }
            else if (role == "faculty")
            {
                Response.Redirect("FacultyDashboard.aspx");
            }
            else if (role == "admin")
            {
                Response.Redirect("AdminDashboard.aspx");
            }
        }
        //else
        //{
        //    lblError.Text = "Invalid username, password, or role.";
        //}
    }
}
