using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class RegisterStudents : System.Web.UI.Page
{
    Table table = new Table();
    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> rID = new List<string>();
        List<string> stuID = new List<string>();
        List<string> course = new List<string>();
        List<string> status = new List<string>();
        //string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DGFGQKN\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string query = "select regID,stuID,cID,requestStatus from registration_request where requestStatus = \'Pending\'";
        SqlCommand cmd = new SqlCommand(query, con);

        string query2 = "Select username from flexuser where role = \'faculty\'";
        SqlCommand cmd1 = new SqlCommand(query2, con);

        SqlDataReader reader = cmd.ExecuteReader();


        while (reader.Read())
        {

            int reg = reader.GetInt32(0);
            string r = reg.ToString();
            string stu = reader.GetString(1);
            string cour = reader.GetString(2);
            string state = reader.GetString(3);
            rID.Add(r);
            course.Add(cour);
            status.Add(state);
            stuID.Add(stu);
        }

        reader.Close();

       

        TableHeaderRow headerRow = new TableHeaderRow();
        TableHeaderCell headerCell1 = new TableHeaderCell();
        TableHeaderCell headerCell2 = new TableHeaderCell();
        TableHeaderCell headerCell3 = new TableHeaderCell();
        TableHeaderCell headerCell4 = new TableHeaderCell();
        TableHeaderCell headerCell5 = new TableHeaderCell();
        headerCell1.Text = "Registration ID";
        headerCell2.Text = "Student ID";
        headerCell3.Text = "Course Code";
        headerCell4.Text = "Request Stauts";
        headerCell5.Text = "Status";
        headerRow.Cells.Add(headerCell1);
        headerRow.Cells.Add(headerCell2);
        headerRow.Cells.Add(headerCell3);
        headerRow.Cells.Add(headerCell4);
        headerRow.Cells.Add(headerCell5);
        table.Rows.Add(headerRow);

        // create table data rows
        for (int i = 0; i < rID.Count; i++)
        {
            TableRow dataRow = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            TableCell cell5 = new TableCell();
            CheckBox checkBox = new CheckBox();
            checkBox.ID = "checkBox" + i.ToString();
            checkBox.AutoPostBack = false;
            cell1.Text = rID[i];
            cell2.Text = stuID[i];
            cell3.Text = course[i];
            cell4.Text = status[i];
            cell5.Controls.Add(checkBox);
            dataRow.Cells.Add(cell1);
            dataRow.Cells.Add(cell2);
            dataRow.Cells.Add(cell3);
            dataRow.Cells.Add(cell4);
            dataRow.Cells.Add(cell5);

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
        List<string> regID = new List<string>();
        List<string> student = new List<string>();
        List<string> course = new List<string>();
        int Index = 0;
        for (int i = 1; i < table.Rows.Count; i++)
        {
            // Get the checkbox in the current row
            CheckBox chk = (CheckBox)table.Rows[i].FindControl("checkBox" + Index.ToString());

            // If the checkbox is checked, retrieve the data from the other columns of the row
            if (chk != null && chk.Checked)
            {
                
                regID.Add(table.Rows[i].Cells[0].Text);
                student.Add(table.Rows[i].Cells[1].Text);
                course.Add(table.Rows[i].Cells[2].Text);
                Index++;
            }
        }

        SqlConnection con = new SqlConnection("Data Source=DESKTOP-DGFGQKN\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        for (int i = 0; i < regID.Count; i++)
        {
            string query1 = "UPDATE registration_request SET requestStatus = \'Accepted\' WHERE stuId = '" + student[i] +"' AND cId = '" + course[i] + "'";
            string query2 = "Insert into enrollment (stuId, cId, secId, enrollmentDate, semester) values('" + student[i] + "', '" + course[i] + "', 'A', CAST(GETDATE() AS DATE),'Spring2023')";
            SqlCommand cmd = new SqlCommand(query1, con);
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
        }
        con.Close(); ;


    }
}
