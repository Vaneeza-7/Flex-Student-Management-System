using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class marksOptions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");

        string query1 = "select teaches.cId from enrollment inner join teaches on teaches.cId = enrollment.cId and teaches.tId = '" + userId + "'";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter = new SqlDataAdapter(query1, con);
        DataTable table = new DataTable();
        adapter.Fill(table);
        if (!IsPostBack)
        {
            // Bind the drop-down list to the data source

            // Bind the data to the drop-down menu
            DropDownList1.DataSource = table;
            DropDownList1.DataTextField = "cId";
            DropDownList1.DataValueField = "cId";
            DropDownList1.DataBind();
        }
        string query2 = "select secId from enrollment inner join teaches on teaches.cId = enrollment.cId and teaches.tId = '" + userId + "'";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter2 = new SqlDataAdapter(query2, con);
        DataTable table2 = new DataTable();
        adapter2.Fill(table2);

        if (!IsPostBack)
        {
            // Bind the drop-down list to the data source

            // Bind the data to the drop-down menu
            DropDownList2.DataSource = table2;
            DropDownList2.DataTextField = "secId";
            DropDownList2.DataValueField = "secId";
            DropDownList2.DataBind();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");

        string id = DropDownList1.SelectedValue;
        string section = DropDownList2.SelectedValue;
        HttpCookie courseDistrIdCookie = new HttpCookie("courseDistrid", id);
        Response.Cookies.Add(courseDistrIdCookie);
        HttpCookie sectDistrIdCookie = new HttpCookie("sectDistrid", section);
        Response.Cookies.Add(sectDistrIdCookie);
     
        Response.Redirect("marksDistribution.aspx");

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}