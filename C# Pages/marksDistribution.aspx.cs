using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class marksDistribution : System.Web.UI.Page
{
    Table table = new Table();
    string text1 ="";
    int rowCount = 0;//header row

    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> etypes = new List<string>();
        List<string> wts = new List<string>();
        List<string> ttmarks = new List<string>();
        string courseDistrid = Request.Cookies["courseDistrid"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string query = "select * from evaluation where cId = '"+courseDistrid+"'";
        SqlCommand cmd = new SqlCommand(query, con);

        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            string eval = reader.GetString(0);
            int weight = reader.GetInt32(1);
            string wt = weight.ToString();
            int ttm = reader.GetInt32(2);
            string tt = ttm.ToString();
            etypes.Add(eval);
            wts.Add(wt);
            ttmarks.Add(tt);
            rowCount++;
        }


        // create table header row
        TableHeaderRow headerRow = new TableHeaderRow();
        TableHeaderCell headerCell1 = new TableHeaderCell();
        TableHeaderCell headerCell2 = new TableHeaderCell();
        TableHeaderCell headerCell3 = new TableHeaderCell();
        TableHeaderCell headerCell4 = new TableHeaderCell();
        headerCell1.Text = "Evaluation Type";
        headerCell2.Text = "Weightage";
        headerCell3.Text = "Total Marks";
        headerCell4.Text = "Course Id";
       // headerCell5.Text = "Semester";  //do this in transcript,/report, add onlyheadercell&headerrow
        headerRow.Cells.Add(headerCell1);
        headerRow.Cells.Add(headerCell2);
        headerRow.Cells.Add(headerCell3);
        headerRow.Cells.Add(headerCell4);
       // headerRow.Cells.Add(headerCell5);
        table.Rows.Add(headerRow);

        // create table data rows
        for (int i = 0; i < etypes.Count; i++)
        {
            TableRow dataRow = new TableRow();
            TableCell cell1 = new TableCell();
            TableCell cell2 = new TableCell();
            TableCell cell3 = new TableCell();
            TableCell cell4 = new TableCell();
           //TableCell cell5 = new TableCell();
            cell1.Text = etypes[i];
            cell2.Text = " " + wts[i] + "  ";
            cell3.Text = ttmarks[i];
            cell4.Text = courseDistrid;
            //cell5.Text = "Fall 2022";
            dataRow.Cells.Add(cell1);
            dataRow.Cells.Add(cell2);
            dataRow.Cells.Add(cell3);
            dataRow.Cells.Add(cell4);
            //dataRow.Cells.Add(cell5);

            table.Rows.Add(dataRow);
        }

        TableRow newRow = new TableRow();
        TableCell newCell1 = new TableCell();
        TableCell newCell2 = new TableCell();
        TableCell newCell3 = new TableCell();
        TableCell newCell4 = new TableCell();
        newCell4.Text = courseDistrid;

        TextBox evalBox = new TextBox();
        evalBox.ID = "evalBox";
        newCell1.Controls.Add(evalBox);

        TextBox weightBox = new TextBox();
        weightBox.ID = "weightBox";
        weightBox.Attributes["type"] = "number";
        newCell2.Controls.Add(weightBox);

        TextBox marksBox = new TextBox();
        marksBox.ID = "marksBox";
        marksBox.Attributes["type"] = "number";
        newCell3.Controls.Add(marksBox);

        newRow.Cells.Add(newCell1);
        newRow.Cells.Add(newCell2);
        newRow.Cells.Add(newCell3);
        newRow.Cells.Add(newCell4);
        table.Rows.Add(newRow);

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
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string courseDistrid = Request.Cookies["courseDistrid"].Value;

        string textBoxValue = "";
        int weightBoxValue=0;
        int marksBoxValue=0;

        //used headerRow so it is not included in count then rows start from 0 for non-head
        //for (int i = 0; i < table.Rows.Count+1; i++)
        //{
        //    // Get the checkbox in the current row
        //    TextBox textbox = (TextBox)table.Rows[i].Cells[0].FindControl("evalBox");
        //    if (textbox != null)
        //    {
        //        textBoxValue = textbox.Text; 
        //    }
        //    TextBox weightbox = (TextBox)table.Rows[i].Cells[1].FindControl("weightBox");
        //    if (weightbox != null)
        //    {
        //        weightBoxValue = int.Parse(weightbox.Text);
        //    }
        //    TextBox marksbox = (TextBox)table.Rows[i].Cells[2].FindControl("marksBox");
        //    if (marksbox != null)
        //    {
        //        marksBoxValue = int.Parse(marksbox.Text);

        //    }


        //}
        if (table.Rows.Count > 0)
        {
            int rowIdx = table.Rows.Count - 1;
            TextBox myTextBox = (TextBox)table.Rows[rowIdx].Cells[0].FindControl("evalBox");

            if (myTextBox != null)
            {
                textBoxValue = myTextBox.Text;
            }

            TextBox weightBox = (TextBox)table.Rows[rowIdx].Cells[1].FindControl("weightBox");
            if (weightBox != null)
            {
                weightBoxValue = int.Parse(weightBox.Text);
            }

            TextBox marksBox = (TextBox)table.Rows[rowIdx].Cells[2].FindControl("marksBox");
            if (marksBox != null)
            {
                marksBoxValue = int.Parse(marksBox.Text);
            }
        }

        string query ="insert into evaluation(evalType, weightage, totalMarks, cId) values ('" + textBoxValue + "'," + weightBoxValue + ", " + marksBoxValue + ", '" + courseDistrid+ "')";
        try
        {
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Label2.Text = "Couldn't complete operation. Invalid distribution.";
        }

        con.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("facultyProfile.aspx");

    }
}
