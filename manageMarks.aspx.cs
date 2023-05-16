using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class manageMarks : System.Web.UI.Page
{
    Table table = new Table();

    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> students = new List<string>();
        List<string> totals = new List<string>();
        string evatype = Request.Cookies["evatype"].Value;
        string courseMan= Request.Cookies["courseMan"].Value;
        string sectMan= Request.Cookies["sectMan"].Value;
        string userId= Request.Cookies["userId"].Value;

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string query = "select stuId, totalMarks from enrollment inner join evaluation on evaluation.cId=enrollment.cId inner join teaches on teaches.cId = evaluation.cId where evaluation.evalType = '"+ evatype+ "' and evaluation.cId = '" +courseMan+ "' and teaches.tId = '" +userId+ "' "; 
        SqlCommand cmd = new SqlCommand(query, con);

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            string std = reader.GetString(0);
            int ttmark = reader.GetInt32(1);
            string tts = ttmark.ToString();
            students.Add(std);
            totals.Add(tts);
        }

        // create table header row
        TableHeaderRow headerRow = new TableHeaderRow();
        TableHeaderCell headerCell1 = new TableHeaderCell();
        TableHeaderCell headerCell2 = new TableHeaderCell();
        TableHeaderCell headerCell3 = new TableHeaderCell();
        TableHeaderCell headerCell4 = new TableHeaderCell();
        headerCell1.Text = "Course Code";
        headerCell2.Text = "Student Id";
        headerCell3.Text = "Obtained Marks";
        headerCell4.Text = "Total Marks";
        headerRow.Cells.Add(headerCell1);
        headerRow.Cells.Add(headerCell2);
        headerRow.Cells.Add(headerCell3);
        headerRow.Cells.Add(headerCell4);
        table.Rows.Add(headerRow);

        // create table data rows
        for (int i = 0; i < students.Count; i++)
        {
            TableRow dataRow = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            
            TextBox TextBox = new TextBox();
            TextBox.ID = "TextBox" + i.ToString();
            TextBox.Attributes["type"] = "number";
            cell3.Controls.Add(TextBox);
            
            cell1.Text = courseMan;
            cell2.Text = students[i];
            cell4.Text = totals[i];
            dataRow.Cells.Add(cell1);
            dataRow.Cells.Add(cell2);
            dataRow.Cells.Add(cell3);
            dataRow.Cells.Add(cell4);
           
            table.Rows.Add(dataRow);
        }

        table.CssClass = "custom-table";
        table.Style.Add("width", "800px");
        table.Style.Add("height", "500px");
        table.Style.Add("background-color", "#f5f5f5");
        table.Style.Add("margin-left", "auto");
        table.Style.Add("margin-right", "auto");



        // add the table to a placeholder control
        PlaceHolder1.Controls.Add(table);



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string evatype = Request.Cookies["evatype"].Value;
        string courseMan = Request.Cookies["courseMan"].Value;
        string sectMan = Request.Cookies["sectMan"].Value;
        string userId = Request.Cookies["userId"].Value;

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        List<int>obMarks=new List<int>();   
        List<string>students=new List<string>();
        for (int i = 0; i < table.Rows.Count; i++)
        {
            TextBox marksBox = (TextBox)table.Rows[i].FindControl("TextBox" + i.ToString());
            if (marksBox != null)
            {
                students.Add(table.Rows[i+1].Cells[1].Text);
                obMarks.Add(int.Parse(marksBox.Text));
            }

        }

        for (int i = 0; i < students.Count; i++)
        {
            try
            {
                string query = "insert into manageMarks(tId, cId, stId, evalType, obtMarks) values ('" + userId + "','" + courseMan + "','" + students[i] + "', '" + evatype + "', " + obMarks[i] + ")";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Label2.Text = "Couldn't complete operation "+ex;
            }

        }

        con.Close();
    }
}