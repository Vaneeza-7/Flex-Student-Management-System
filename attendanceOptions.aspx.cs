using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class attendanceOptions : System.Web.UI.Page
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

        // Bind the data to the drop-down menu
        DropDownList1.DataSource = table;
        DropDownList1.DataTextField = "cId";
        DropDownList1.DataValueField = "cId";
        DropDownList1.DataBind();

        string query2 = "select secId from enrollment inner join teaches on teaches.cId = enrollment.cId and teaches.tId = '" + userId + "'";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter2 = new SqlDataAdapter(query2, con);
        DataTable table2 = new DataTable();
        adapter2.Fill(table2);

        // Bind the data to the drop-down menu
        DropDownList2.DataSource = table2;
        DropDownList2.DataTextField = "secId";
        DropDownList2.DataValueField = "secId";
        DropDownList2.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");

        string dt =Request.Form["filldate"];
        string id = DropDownList1.SelectedValue;
        string section = DropDownList2.SelectedValue;
        HttpCookie courseIdCookie = new HttpCookie("courseid", id);
        Response.Cookies.Add(courseIdCookie);
        HttpCookie sectIdCookie = new HttpCookie("sectid", section);
        Response.Cookies.Add(sectIdCookie);
        HttpCookie dateCookie = new HttpCookie("dateAtt", dt);
        Response.Cookies.Add(dateCookie);

        Response.Redirect("manageAttendance.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}