using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");

        string query1 = "select cname from enrollment inner join course on course.code=enrollment.cId where stuId='"+userId+"'";  
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter1 = new SqlDataAdapter(query1, con);
        DataTable table1 = new DataTable();
        adapter1.Fill(table1);

        // Bind the data to the drop-down menu
        if (!IsPostBack)
        {
            DropDownList1.DataSource = table1;
            DropDownList1.DataTextField = "cname";
            DropDownList1.DataValueField = "cname";
            DropDownList1.DataBind();
        }

        string query2 = "select secId from enrollment inner join course on course.code=enrollment.cId where stuId='" + userId + "'";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter2 = new SqlDataAdapter(query2, con);
        DataTable table2 = new DataTable();
        adapter2.Fill(table2);

        // Bind the data to the drop-down menu
        if (!IsPostBack)
        {
            DropDownList2.DataSource = table2;
            DropDownList2.DataTextField = "secId";
            DropDownList2.DataValueField = "secId";
            DropDownList2.DataBind();
        }

        string query3 = "select username from teaches inner join enrollment on enrollment.cId=teaches.cId inner join flexuser on flexuser.id = teaches.tId";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter3 = new SqlDataAdapter(query3, con);
        DataTable table3 = new DataTable();
        adapter3.Fill(table3);

        // Bind the data to the drop-down menu
        if (!IsPostBack)
        {
            DropDownList3.DataSource = table3;
            DropDownList3.DataTextField = "username";
            DropDownList3.DataValueField = "username";
            DropDownList3.DataBind();
        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string userId = Request.Cookies["userId"].Value;

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        string teachId="";
        string courId="";
        string dated = Request.Form["filldate"];
        int knowledgeScore = int.Parse(Request.Form["knowledge"]);
        int communicationScore = int.Parse(Request.Form["communication"]);
        int availabilityScore = int.Parse(Request.Form["availability"]);
        int classTimeScore = int.Parse(Request.Form["classtime"]);
        int questionScore = int.Parse(Request.Form["question"]);
        int attireScore = int.Parse(Request.Form["attire"]);
        int contentScore = int.Parse(Request.Form["content"]);
        int decorumScore = int.Parse(Request.Form["decorum"]);
        int markingScore = int.Parse(Request.Form["marking"]);
        int overallScore = int.Parse(Request.Form["overall"]);
        string comments = TextBox1.Text;
        float totalScore = ((float)knowledgeScore + communicationScore + availabilityScore + classTimeScore + questionScore + attireScore + contentScore + decorumScore + markingScore + overallScore) / 30;


        con.Open();
        string tName = DropDownList3.SelectedValue;
        string courseName = DropDownList1.SelectedValue;
        string section = DropDownList2.SelectedValue;

        string query1 = "select teaches.cId, tId from teaches inner join enrollment on enrollment.cId=teaches.cId where teaches.cId in (select code from course where course.cname = '" + courseName + "') and teaches.tId in (select id from flexuser where flexuser.username = '" + tName+ "')";  
        SqlCommand command1 = new SqlCommand(query1, con);
        SqlDataReader reader = command1.ExecuteReader();
        if (reader.Read())
        {
             courId = reader.GetString(0);
             teachId = reader.GetString(1);

        }
        reader.Close();

        comments = comments.Replace("'", "''");
        string query = "insert into feedback (tId, cId, stId, comments, fdate, metric) values ('" + teachId + "','" + courId + "', '" + userId + "', '" + comments+ "', '" + dated + "', " + totalScore + ") ";
        SqlCommand command = new SqlCommand(query, con);
        command.ExecuteNonQuery();
        con.Close();

    }




    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
