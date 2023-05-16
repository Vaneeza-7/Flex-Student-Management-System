using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class manageMarksOptions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userId = Request.Cookies["userId"].Value;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");

        string query1 = "select teaches.cId from enrollment inner join teaches on teaches.cId = enrollment.cId where enrollment.cId in (select cId from evaluation) and teaches.tId = '" + userId + "'";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter = new SqlDataAdapter(query1, con);
        DataTable table = new DataTable();
        adapter.Fill(table);

        if (!IsPostBack)
        {
            // Bind the data to the drop-down menu
            DropDownList1.DataSource = table;
            DropDownList1.DataTextField = "cId";
            DropDownList1.DataValueField = "cId";
            DropDownList1.DataBind();
        }
        string query2 = "select secId from enrollment inner join teaches on teaches.cId = enrollment.cId where enrollment.cId in (select cId from evaluation) and teaches.tId = '" + userId + "'";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter2 = new SqlDataAdapter(query2, con);
        DataTable table2 = new DataTable();
        adapter2.Fill(table2);

        if (!IsPostBack)
        {
            // Bind the data to the drop-down menu
            DropDownList2.DataSource = table2;
            DropDownList2.DataTextField = "secId";
            DropDownList2.DataValueField = "secId";
            DropDownList2.DataBind();
        }

        string query3 = "select distinct evalType from enrollment inner join teaches on teaches.cId = enrollment.cId inner join evaluation on evaluation.cId = enrollment.cId where enrollment.cId in (select cId from evaluation) and teaches.tId = '" + userId + "'";
        // Execute the query and retrieve data into a data table
        SqlDataAdapter adapter3 = new SqlDataAdapter(query3, con);
        DataTable table3 = new DataTable();
        adapter3.Fill(table3);

        if (!IsPostBack)
        {
            // Bind the data to the drop-down menu
            DropDownList3.DataSource = table3;
            DropDownList3.DataTextField = "evalType";
            DropDownList3.DataValueField = "evalType";
            DropDownList3.DataBind();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True");

        string id = DropDownList1.SelectedValue;
        string section = DropDownList2.SelectedValue;
        string evatype = DropDownList3.SelectedValue;
        HttpCookie courseManCookie = new HttpCookie("courseMan", id);
        Response.Cookies.Add(courseManCookie);
        HttpCookie sectManCookie = new HttpCookie("sectMan", section);
        Response.Cookies.Add(sectManCookie);
        HttpCookie evatypeCookie = new HttpCookie("evatype", evatype);
        Response.Cookies.Add(evatypeCookie);

        Response.Redirect("manageMarks.aspx");

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

}