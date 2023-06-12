using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentProfile : System.Web.UI.Page
{
    //string studentID = Request.QueryString["id"];
    protected void Page_Load(object sender, EventArgs e)
    {
        string userId = Request.Cookies["userId"].Value;
        //string userId = (string)Application["userId"];
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
        TextBox2.Text = username;
        TextBox3.Text = name;
        TextBox4.Text = dobString;
        TextBox5.Text = gender;
        TextBox7.Text = nat;
        TextBox9.Text = phnoString;

        //string userId = Request.Cookies["userIdCookie"].Value;
        //SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        //con.Open();
        //string query = "select username, concat(firstName, ' ', lastName) as name, dob, gender, nationality, phoneNo from flexuser where id='" + userId + "'";
        //SqlCommand cmd = new SqlCommand(query, con);
        //SqlDataReader reader = cmd.ExecuteReader();
        //if (reader.HasRows)
        //{
        //    while (reader.Read())
        //    {
        //        TextBox1.Text = userId;
        //        TextBox2.Text = reader["username"].ToString();
        //        TextBox3.Text = reader["name"].ToString();
        //        TextBox4.Text = reader["dob"].ToString();
        //        TextBox5.Text = reader["gender"].ToString();
        //        TextBox7.Text = reader["nationality"].ToString();
        //        TextBox9.Text = reader["phoneNo"].ToString();
        //    }
        //}
        //reader.Close();
        //con.Close();




    }

    //protected void TextBox1_TextChanged(object sender, EventArgs e)
    //{
    //    string userId = Request.Cookies["userIdCookie"].Value;
    //    SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
    //    con.Open();
    //    string qusername = "select username from flexuser where id='" + userId + "'";
    //    SqlCommand cmd = new SqlCommand(qusername, con);

    //    string username = (string)cmd.ExecuteScalar();

    //    TextBox1.Text = userId;


    //}
}
