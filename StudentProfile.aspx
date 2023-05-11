﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string value = DropDownList1.SelectedValue;

       
        if (value == "Course Registration")
        {
            Response.Redirect("courseRegistration.aspx");
        }
        else if (value == "Attendance")
        {
            Response.Redirect("attendance.aspx");

        }
        else if(value == "Marks")
        {
             Response.Redirect("marks.aspx");
        }
        else if(value == "Transcript")
        {
             Response.Redirect("transcript.aspx");
        }
        else if(value == "Feedback")
        {
             Response.Redirect("feedback.aspx");
        }

    }

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 913px;
        }
    </style>
</head>
<body style="height: 910px; width: 1244px;">
    <form id="form1" runat="server">
        <div style="margin-left: 4px; background-color: cornflowerblue; height:60px;">

        </div>
        <div style="margin-left: 40px;margin-top: 25px; height: 42px;">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Text="Student Profile"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="         |       "></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Names="Times New Roman" Font-Size="Small" Text="HOME"></asp:Label>
        
        </div>

        <div style="border: thin solid #1E90FF; margin-left: 40px; width: 1177px; margin-top: 10px; height: 135px;">
        
            <p style="margin-left: 0px; background-color:DodgerBlue; width: 1178px; margin-top: 0px;">
                <asp:Image ID="Image1" runat="server" Width="33px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfBLhnA-5RgTFwYxyGrQkUhKMjJY7nBwIHtA&amp;usqp=CAU" Height="30px" />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Text="University Information" ForeColor="White"></asp:Label>
&nbsp;&nbsp;</p>
            <p style="margin-left: 80px">
            &nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Registration No. :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 25px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="User Name: "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 18px"></asp:TextBox>
            </p>
        </div>
        <div style="border: thin solid #1E90FF; margin-left:40px; margin-top: 10px; height: 262px; width: 1177px;">
            <p style="margin-left: 0px; background-color:DodgerBlue; width: 1178px; margin-top: 0px;">

                <asp:Image ID="Image2" runat="server" Height="32px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxwBSld3XNShoHRPdqsl9tYETtMwnQr9DhBw&amp;usqp=CAU" Width="32px" />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Text="Personal Information" ForeColor="White"></asp:Label>

            </p>

            <p style="margin-left: 80px">

                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Name: "></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 12px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="DOB: "></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 22px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Gender: "></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 18px"></asp:TextBox>

            </p>

            <p style="margin-left: 80px; width: 1092px;">

                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="CNIC: "></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 11px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Nationality: "></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 15px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Email: "></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 7px"></asp:TextBox>

            </p>

            <p style="margin-left: 80px; width: 1091px;">

                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Mobile No.: "></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 16px"></asp:TextBox>

            </p>

        </div>

        <div style="border: thin solid #1E90FF; margin-left:40px; margin-top: 10px; height: 159px; outline-width: 10px; outline-color:dodgerblue; width: 1177px;">
           
            <p style="margin-left: 0px; background-color:DodgerBlue; width: 1180px; margin-top: 0px;">

                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQwl19B2TzhQTLW0ogadwsmdLC98xs7PtaJQ&amp;usqp=CAU" Width="49px" />
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Text="Contact Information" ForeColor="White"></asp:Label>
            
            </p>
           
            <p style="margin-left: 80px; width: 1096px;">

                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Address: "></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 16px"></asp:TextBox>
            
            </p>

        </div>
        
        <div style="border: thin solid #1E90FF; margin-left:40px; margin-top: 10px; height: 45px; outline-width: 10px; outline-color:dodgerblue; width: 1177px;">
        
            <p style="margin-left: 0px; background-color:DodgerBlue; width: 1180px; margin-top: 0px; height: 47px;">
           
               <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Tasks:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
               <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Times New Roman" Font-Size="Medium" Height="45px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="377px" AutoPostBack="True">
                 <asp:ListItem>Options</asp:ListItem>
                 <asp:ListItem>Course Registration</asp:ListItem>
                 <asp:ListItem>Attendance</asp:ListItem>
                 <asp:ListItem>Marks</asp:ListItem>
                 <asp:ListItem>Transcript</asp:ListItem>
                 <asp:ListItem>Feedback</asp:ListItem>
               </asp:DropDownList>

           </p>
            
        </div>

    </form>
</body>
</html>

