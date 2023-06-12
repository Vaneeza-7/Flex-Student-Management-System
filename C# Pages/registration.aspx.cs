using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-BQUID6TK\\SQLEXPRESS;Initial Catalog=flex;Integrated Security=True"); //Connection String
        conn.Open();
        SqlCommand cm;
        string reg = Request.Form["exampleInputId"];
        string un = Request.Form["exampleInputUsername2"];
        string pwd = Request.Form["exampleInputPassword1"];
        string Fname = Request.Form["fname"];
        string Lname = Request.Form["lname"];
        string birth = Request.Form["db"];
        string ny= Request.Form["nation"];
        string phno = Request.Form["phno"];
        string gender = DropDownList1.SelectedValue;
        string rol=ddlRole.SelectedValue;
        string query = "Insert into flexuser (id, username, firstName, lastName, password, role, dob, gender, nationality, phoneNo) values ('" + reg + "','" + un + "','" + Fname + "','" + Lname + "','" + pwd + "','" + rol + "','" + birth + "','" + gender + "','" + ny + "','" + phno + "')";
        cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        conn.Close();


    }
}
