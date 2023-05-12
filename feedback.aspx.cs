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

    }



}