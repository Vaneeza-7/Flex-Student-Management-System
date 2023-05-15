using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class facultyProfile : System.Web.UI.Page
{
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string value = DropDownList1.SelectedValue;


        if (value == "Generate Reports")
        {
            Response.Redirect("facultyReports.aspx");
        }
        else if (value == "Manage Attendance")
        {
            Response.Redirect("attendanceOptions.aspx");

        }
        else if (value == "Manage Marks")
        {
            Response.Redirect("manageMarks.aspx");
        }
        else if (value == "Set Marks Distribution")
        {
            Response.Redirect("marksDistribution.aspx");
        }
        else if (value == "View Feedback")
        {
            Response.Redirect("viewFeedback.aspx");
        }

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        string tId = Request.Cookies["tId"].Value;
        //string userId = (string)Application["userId"];
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string qusername = "select username from flexuser where id='" + tId + "'";
        string qname = "select concat(firstName, ' ',lastName ) from flexuser where id='" + tId + "'";
        string qdob = "select dob from flexuser where id='" + tId + "'";
        string qgender = "select gender from flexuser where id='" + tId + "'";
        string qnat = "select nationality from flexuser where id='" + tId + "'";
        string qphno = "select phoneNo from flexuser where id='" + tId + "'";
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

        Label18.Text = tId;
        Label19.Text = username;
        Label20.Text = name;
        Label21.Text = dobString;
        Label22.Text = gender;
        Label24.Text = nat;
        Label26.Text = phnoString;

    }
}