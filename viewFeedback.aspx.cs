using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class viewFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Table table = new Table();
        List<string> codes = new List<string>();
        List<string> comments = new List<string>();
        List<string> sums = new List<string>();
        List<string> counts = new List<string>();
        List<string> percentages = new List<string>();
        
        string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string query = "select feedback.cId, comments, sum(metric) as sumPoints , count(*) as totalStuds, CAST(sum(metric) / count(metric) as float) * 100 as percentage from feedback where tId = '" +userId+ "' group by feedback.cId,comments";//add cookie id
        SqlCommand cmd = new SqlCommand(query, con);

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            string code = reader.GetString(0);
            string cm = reader.GetString(1);
            double sum = reader.GetDouble(2);
            string sm = sum.ToString();
            int count = (int)reader.GetInt32(3);
            string cont = count.ToString();
            double pct = (float)reader.GetDouble(4);
            string percent=pct.ToString();
            codes.Add(code);
            comments.Add(cm);
            sums.Add(sm);
            counts.Add(cont);
            percentages.Add(percent);
        }

        // create table header row
        TableHeaderRow headerRow = new TableHeaderRow();
        TableHeaderCell headerCell1 = new TableHeaderCell();
        TableHeaderCell headerCell2 = new TableHeaderCell();
        TableHeaderCell headerCell3 = new TableHeaderCell();
        TableHeaderCell headerCell4 = new TableHeaderCell();
        TableHeaderCell headerCell5 = new TableHeaderCell();
        headerCell1.Text = "Code";
        headerCell2.Text = "Comments";
        headerCell3.Text = "Sum of Points";
        headerCell4.Text = "Total Feedbacks";
        headerCell5.Text = "Percentage";
        headerRow.Cells.Add(headerCell1);
        headerRow.Cells.Add(headerCell2);
        headerRow.Cells.Add(headerCell3);
        headerRow.Cells.Add(headerCell4);
        headerRow.Cells.Add(headerCell5);
        table.Rows.Add(headerRow);

        // create table data rows
        for (int i = 0; i < codes.Count; i++)
        {
            TableRow dataRow = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
            TableCell cell5 = new TableCell();

            cell1.Text = codes[i];
            cell2.Text = " " + comments[i] + "  ";
            cell3.Text = sums[i];
            cell4.Text = counts[i];
            cell5.Text = percentages[i];
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("facultyProfile.aspx");
    }
}