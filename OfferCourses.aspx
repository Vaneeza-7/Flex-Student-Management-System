<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OfferCourses.aspx.cs" Inherits="OfferCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 1263px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin-left: 4px; background-color: cornflowerblue; height:60px;">

        </div>

        <div style="margin-left: 40px; margin-right: 40px; margin-top: 60px; height: 900px; border: thin solid #1E90FF;">

            <p style="background-color: dodgerblue; height: 40px; margin-top: 0px">

            

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" BorderColor="DodgerBlue" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="X-Large" ForeColor="White" Height="28px" style="margin-left: 60px; margin-top: 0px" Text="Code" Width="187px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="Course Name" Width="297px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="Status"></asp:Label>

            

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="CL1000" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Intro. to Info. and Comm. Tech." Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="CS1002" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Programming Fundamentals" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox2" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="CL1002" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Programming Fundamentals - Lab" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox3" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="MT1003" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Calculus and Analytical Geometry" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox4" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="NS1001" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Applied Physics" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox5" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="SS1004" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label15" runat="server" Font-Names="Calibri" Font-Size="Large" Text="English Composition and Comprehension" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox6" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label16" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="SL1004" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label17" runat="server" Font-Names="Calibri" Font-Size="Large" Text="English Composition and Comprehension - Lab" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox7" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label18" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="SS1002" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Islamic Studies" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox8" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="SS1003" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label21" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Pakistan Studies" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox9" runat="server" Height="28px" />

            </p>

            
            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label22" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="MT1006" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label23" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Differential Equations" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox10" runat="server" Height="28px" />

            </p>

            
            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label24" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="SS1008" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label25" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Communication and Presentation Skills" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox11" runat="server" Height="28px" />

            </p>

            
            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label26" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="SL1008" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label27" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Communication and Presentation Skills - Lab" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox12" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label28" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="CS1004" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label29" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Object Oriented Programming" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox13" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label30" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="CL1004" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label31" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Object Oriented Programming - Lab" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox14" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label32" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="EE1005" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label33" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Digital Logic Design" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox15" runat="server" Height="28px" />

            </p>

            <p style="margin-left: 95px; margin-right: 70px; border: solid; border-color: black; border-width:thin;">

                <asp:Label ID="Label34" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Large" Text="EL1005" Width="200px" style="margin-left: 19px"></asp:Label>

            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label35" runat="server" Font-Names="Calibri" Font-Size="Large" Text="Digital Logic Design - Lab" Width="434px"></asp:Label>

            &nbsp;
                <asp:CheckBox ID="CheckBox16" runat="server" Height="28px" />

                

            </p>

            <p style="margin-left: 95px; margin-right: 70px; background-color: dodgerblue;">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Offer Courses" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Width="255px" />

            </p>

            

        </div>
    </form>
</body>
</html>
