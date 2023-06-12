using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class attendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> date = new List<string>();
        List<string> cnames = new List<string>();
        List<string> sect = new List<string>();
        List<string> status = new List<string>();
        string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string query = "select attDate, cId, sect, status from attendance where attendance.studId='" + userId + "'";//where id is user id
        SqlCommand cmd = new SqlCommand(query, con);

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            DateTime dt = (DateTime)reader.GetDateTime(0);
            string dated = dt.ToString("MM/dd/yyyy");
            string cname = reader.GetString(1);
            string type = reader.GetString(2);
            string crd = reader.GetString(3);
            date.Add(dated);
            cnames.Add(cname);
            sect.Add(type);
            status.Add(crd);
        }

        //for (int i = 0; i < codes.Count; i++)
        //{
        //    Label label = new Label();
        //    label.ID = "Label" + i.ToString();
        //    label.Text = courses[i];
        //    PlaceHolder1.Controls.Add(label);
        //}

        Table table = new Table();
        // create table header row
        TableHeaderRow headerRow = new TableHeaderRow();
        TableHeaderCell headerCell1 = new TableHeaderCell();
        TableHeaderCell headerCell2 = new TableHeaderCell();
        TableHeaderCell headerCell3 = new TableHeaderCell();
        TableHeaderCell headerCell4 = new TableHeaderCell();
        TableHeaderCell headerCell5 = new TableHeaderCell();
        headerCell1.Text = "Date";
        headerCell2.Text = "Course Name";
        headerCell3.Text = "Section";
        headerCell4.Text = "Status";
        headerRow.Cells.Add(headerCell1);
        headerRow.Cells.Add(headerCell2);
        headerRow.Cells.Add(headerCell3);
        headerRow.Cells.Add(headerCell4);
        table.Rows.Add(headerRow);

        // create table data rows
        for (int i = 0; i < date.Count; i++)
        {
            TableRow dataRow = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            cell1.Text = date[i];
            cell2.Text = " " + cnames[i] + "  ";
            cell3.Text = sect[i];
            cell4.Text = status[i];
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

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
