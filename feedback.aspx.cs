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

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");

        string query = "select cname,code from course";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter = new SqlDataAdapter(query, con);
        DataTable table = new DataTable();
        adapter.Fill(table);

        // Bind the data to the drop-down menu
        DropDownList1.DataSource = table;
        DropDownList1.DataTextField = "cname";
        DropDownList1.DataValueField = "code";
        DropDownList1.DataBind();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        string teachId="0";
        string courId="0";
        string stdId="0";
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
        float totalScore = (knowledgeScore + communicationScore + availabilityScore + classTimeScore + questionScore + attireScore + contentScore + decorumScore + markingScore + overallScore) / 10;

        con.Open();
        string query1 = "select tId, teaches.cId, stuId from teaches inner join enrollment on enrollment.cId = teaches.cId";
        SqlCommand command1 = new SqlCommand(query1, con);
        SqlDataReader reader = command1.ExecuteReader();
        if (reader.Read())
        {
             teachId = reader.GetString(0);
             courId = reader.GetString(1);
             stdId = reader.GetString(2);

        }
        reader.Close();

        string query = "insert into feedback (tId, cId, stId, comments, fdate, metric) values ('" + teachId + "','" + courId + "', '" + stdId + "', '" + comments + "', '" + dated + "', '" + totalScore + "')";
        SqlCommand command = new SqlCommand("query", con);
        command.ExecuteNonQuery();
        con.Close();

    }




    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}