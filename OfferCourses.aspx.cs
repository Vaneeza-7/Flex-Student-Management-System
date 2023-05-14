using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class OfferCourses : System.Web.UI.Page
{
    // create a new table
    Table table = new Table();

    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> codes = new List<string>();
        List<string> cnames = new List<string>();
        List<string> types = new List<string>();
        List<string> crdts = new List<string>();
        //string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        string query = "select * from course";
        SqlCommand cmd = new SqlCommand(query, con);
        
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            string code = reader.GetString(0);
            string cname=reader.GetString(1);
            string type = reader.GetString(2);
            int crd = reader.GetInt32(3);
            string credits = crd.ToString();
            codes.Add(code);
            cnames.Add(cname);
            types.Add(type);
            crdts.Add(credits);
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
        headerCell1.Text = "Code";
        headerCell2.Text = "Course Name";
        headerCell3.Text = "Type";
        headerCell4.Text = "Crdt Hours";
        headerCell5.Text = "Status";
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
            CheckBox checkBox = new CheckBox();
            checkBox.ID = "checkBox" + i.ToString();
            checkBox.AutoPostBack = false;
            cell1.Text = codes[i];
            cell2.Text = " "+cnames[i]+"  ";
            cell3.Text = types[i];
            cell4.Text = crdts[i];
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


        // add the table to a placeholder control
        PlaceHolder1.Controls.Add(table);








    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string userId = Request.Cookies["userId"].Value;
        List<string> codes = new List<string>();
        int codesIndex = 0;
        for (int i = 0; i < table.Rows.Count; i++)
        {
                // Get the checkbox in the current row
                CheckBox chk = (CheckBox)table.Rows[i].FindControl("checkBox" + i.ToString());

            // If the checkbox is checked, retrieve the data from the other columns of the row
            if (chk != null && chk.Checked)
            {
                if (table.Rows[i].Cells.Count > 0)
                {
                    codes.Add(table.Rows[i].Cells[0].Text);
                    codesIndex++;
                }
            }
        }
            
        

        int reg = 0;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");
        con.Open();
        for (int i = 0; i < codes.Count; i++)
        {
            string query = "Insert into offers (cId, adId, regCount) values('" + codes[i] + "', '" + userId + "'," + reg +")";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }
        con.Close(); ;


    }
}