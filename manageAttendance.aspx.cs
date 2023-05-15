using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class manageAttendance : System.Web.UI.Page
{
    Table table = new Table();

    protected void Page_Load(object sender, EventArgs e)
    {

        List<string> stdid = new List<string>();
        string userId = Request.Cookies["userId"].Value;
        string dated = Request.Cookies["dateAtt"].Value;
        string crId = Request.Cookies["courseid"].Value;
        string scId = Request.Cookies["sectid"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string query = "select stuId from enrollment inner join teaches on teaches.cId = enrollment.cId where enrollment.cId ='" + crId + "' and enrollment.secId ='" + scId + "' and teaches.tId ='" + userId + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            string studentid=reader.GetString(0);
            stdid.Add(studentid);
        }

        reader.Close();
        // create a new table

        // create table header row
        TableHeaderRow headerRow = new TableHeaderRow();
        TableHeaderCell headerCell1 = new TableHeaderCell();
        TableHeaderCell headerCell2 = new TableHeaderCell();
        TableHeaderCell headerCell3 = new TableHeaderCell();
        TableHeaderCell headerCell4 = new TableHeaderCell();
        TableHeaderCell headerCell5 = new TableHeaderCell();
        headerCell1.Text = "Student Id";
        headerCell2.Text = "Date";
        headerCell3.Text = "Course Id";
        headerCell4.Text = "Section";
        headerCell5.Text = "Status";
        headerRow.Cells.Add(headerCell1);
        headerRow.Cells.Add(headerCell2);
        headerRow.Cells.Add(headerCell3);
        headerRow.Cells.Add(headerCell4);
        headerRow.Cells.Add(headerCell5);
        table.Rows.Add(headerRow);

        // create table data rows
        for (int i = 0; i < stdid.Count; i++)
        {
            TableRow dataRow = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            TableCell cell5 = new TableCell();
            DropDownList dropDownList = new DropDownList();
            dropDownList.ID = "dropDownList" + i.ToString();
            dropDownList.Items.Add("Present");
            dropDownList.Items.Add("Absent");
            dropDownList.Items.Add("Late");
            dropDownList.Items.Add("Leave");
            cell1.Text = stdid[i];
            cell2.Text = dated;
            cell3.Text = crId;
            cell4.Text = scId;
            cell5.Controls.Add(dropDownList);
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


        // add the table to a placeholder control
        PlaceHolder1.Controls.Add(table);






    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}