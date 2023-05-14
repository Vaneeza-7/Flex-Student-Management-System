using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AcademicOffice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string qusername = "select username from flexuser where id='" + userId + "'";
        string qname = "select concat(firstName, ' ',lastName ) from flexuser where id='" + userId + "'";
        string qdob = "select dob from flexuser where id='" + userId + "'";
        string qgender = "select gender from flexuser where id='" + userId + "'";
        string qnat = "select nationality from flexuser where id='" + userId + "'";
        string qphno = "select phoneNo from flexuser where id='" + userId + "'";
        SqlCommand cmd = new SqlCommand(qusername, con);
        SqlCommand cmd1 = new SqlCommand(qname, con);
        SqlCommand cmd2 = new SqlCommand(qdob, con);
        SqlCommand cmd3 = new SqlCommand(qgender, con);
        SqlCommand cmd4 = new SqlCommand(qnat, con);
        SqlCommand cmd5 = new SqlCommand(qphno, con);

        //object obj = cmd.ExecuteScalar();
        //string username=(string)obj;

        string username = (string)cmd.ExecuteScalar();
        string name = (string)cmd1.ExecuteScalar();
        DateTime dob = (DateTime)cmd2.ExecuteScalar();
        string dobString = dob.ToString("MM/dd/yyyy");
        string gender = (string)cmd3.ExecuteScalar();
        string nat = (string)cmd4.ExecuteScalar();
        int phno = (int)cmd5.ExecuteScalar();
        string phnoString = phno.ToString();

        Label18.Text = userId;
        Label19.Text = username;
        Label20.Text = name;
        Label21.Text = dobString;
        Label22.Text = gender;
        Label24.Text = nat;
        Label26.Text = phnoString;

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // string value = DropDownList1.SelectedValue;
        string value = DropDownList1.SelectedValue;


        if (value == "Offer Courses")
        {
            Response.Redirect("OfferCourses.aspx");
        }
        else if (value == "Register Students")
        {
            Response.Redirect("RegisterStudents.aspx");

        }
        else if (value == "Assign Instructors")
        {
            Response.Redirect("AssignInstructor.aspx");
        }

    }


}
