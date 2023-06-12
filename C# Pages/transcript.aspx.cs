using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class transcript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Table table = new Table();
        List<string> codes = new List<string>();
        List<string> cnames = new List<string>();
        List<string> sects = new List<string>();
        List<string> crdts = new List<string>();
        List<string> grades = new List<string>();
        List<string> points = new List<string>();
        List<string> types = new List<string>();
        List<string> sems = new List<string>();

        string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string query = "select code, cname, secId, crdHrs, grade, points, ctype, semester from enrollment inner join course on course.code = enrollment.cId where stuId = '"+userId+"'";//add cookie id
        SqlCommand cmd = new SqlCommand(query, con);

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            string code = reader.GetString(0);
            string cname = reader.GetString(1);
            string sec = reader.GetString(2);
            int crd = reader.GetInt32(3);
            string credits = crd.ToString();
            string grd = reader.GetString(4);
            //float mark = (float)reader.GetFloat(5);
           // string point = mark.ToString();
            string type = reader.GetString(6);
            string sms = reader.GetString(7);
            codes.Add(code);
            cnames.Add(cname);
            sects.Add(sec);
            crdts.Add(credits);
            grades.Add(grd);
            //points.Add(point);
            types.Add(type);
            sems.Add(sms);
        }

        //for (int i = 0; i < codes.Count; i++)
        //{
        //    Label label = new Label();
        //    label.ID = "Label" + i.ToString();
        //    label.Text = courses[i];
        //    PlaceHolder1.Controls.Add(label);
        //}

        // create table header row
        TableHeaderRow headerRow = new TableHeaderRow();
        TableHeaderCell headerCell1 = new TableHeaderCell();
        TableHeaderCell headerCell2 = new TableHeaderCell();
        TableHeaderCell headerCell3 = new TableHeaderCell();
        TableHeaderCell headerCell4 = new TableHeaderCell();
        TableHeaderCell headerCell5 = new TableHeaderCell();
        //TableHeaderCell headerCell6 = new TableHeaderCell();
        TableHeaderCell headerCell7 = new TableHeaderCell();
        TableHeaderCell headerCell8 = new TableHeaderCell();
        headerCell1.Text = "Code";
        headerCell2.Text = "Course Name";
        headerCell3.Text = "Section";
        headerCell4.Text = "Credits";
        headerCell5.Text = "Grade";
        //headerCell6.Text = "Points";
        headerCell7.Text = "Type";
        headerCell8.Text = "Semester";
        headerRow.Cells.Add(headerCell1);
        headerRow.Cells.Add(headerCell2);
        headerRow.Cells.Add(headerCell3);
        headerRow.Cells.Add(headerCell4);
        headerRow.Cells.Add(headerCell5);
        //headerRow.Cells.Add(headerCell6);
        headerRow.Cells.Add(headerCell7);
        headerRow.Cells.Add(headerCell8);
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
           // TableCell cell6 = new TableCell();
            TableCell cell7 = new TableCell();
            TableCell cell8 = new TableCell();
            cell1.Text = codes[i];
            cell2.Text = " " + cnames[i] + "  ";
            cell3.Text = sects[i];
            cell4.Text = crdts[i];
            cell5.Text = grades[i];
           // cell6.Text = points[i];
            cell7.Text = types[i];
            cell8.Text = sems[i];  
            dataRow.Cells.Add(cell1);
            dataRow.Cells.Add(cell2);
            dataRow.Cells.Add(cell3);
            dataRow.Cells.Add(cell4);
            dataRow.Cells.Add(cell5);
            dataRow.Cells.Add(cell7);
            dataRow.Cells.Add(cell8);

            table.Rows.Add(dataRow);
        }

        table.CssClass = "custom-table";
        table.Style.Add("width", "800px");
        table.Style.Add("height", "500px");
        table.Style.Add("background-color", "#f5f5f5");


        // add the table to a placeholder control
        PlaceHolder1.Controls.Add(table);

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("cgpaGraph.aspx");
    }
}
