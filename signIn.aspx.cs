using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string idR = TextBox1.Text;
        string passwordR = TextBox2.Text;
        //string roleR = ddlRole.SelectedValue;

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string qRole = "select role from flexuser where id='" + idR + "' AND password = '" + passwordR + "'";
        SqlCommand cmd = new SqlCommand("SELECT count(*) FROM flexuser WHERE id='" + idR + "' AND password = '" + passwordR + "'", con);
        SqlCommand cmd1 = new SqlCommand(qRole, con);

        SqlDataReader res = cmd.ExecuteReader();

        if (res.HasRows)
        {
              res.Close();
             object obj = cmd1.ExecuteScalar();
             string rol= (string)obj;

            if (rol == "student")
            {
                Response.Redirect("StudentProfile.aspx");
            }
            else if (rol == "faculty")
            {
                Response.Redirect("facultyProfile.aspx");
            }
            else if (rol == "admin")
            {
                Response.Redirect("AcademicOffice.aspx");
            }

        }
        else 
        {
            Response.Redirect("registration.aspx");
        }
        con.Close();

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}