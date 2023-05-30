<%@ Page Language="C#" CodeFile="AcademicOffice.aspx.cs" Inherits="Academic_Office" %>

<!DOCTYPE html>
<script runat="server">

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

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Text="Officer Profile"></asp:Label>
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
&nbsp;<asp:Label ID="Label18" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="User Name: "></asp:Label>
                <asp:Label ID="Label19" runat="server"></asp:Label>
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
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label20" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="DOB: "></asp:Label>
&nbsp;&nbsp;<asp:Label ID="Label21" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Gender: "></asp:Label>
                <asp:Label ID="Label22" runat="server"></asp:Label>

            </p>

            <p style="margin-left: 80px; width: 1092px;">

                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="CNIC: "></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:Label ID="Label23" runat="server" Text="61101-12349875"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Nationality: "></asp:Label>
&nbsp;<asp:Label ID="Label24" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Email: "></asp:Label>
                <asp:Label ID="Label25" runat="server" Text="flexadmin@gmai.com"></asp:Label>

            </p>

            <p style="margin-left: 80px; width: 1091px;">

                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Mobile No.: "></asp:Label>
                <asp:Label ID="Label26" runat="server"></asp:Label>

            </p>

        </div>

        <div style="border: thin solid #1E90FF; margin-left:40px; margin-top: 10px; height: 159px; outline-width: 10px; outline-color:dodgerblue; width: 1177px;">
           
            <p style="margin-left: 0px; background-color:DodgerBlue; width: 1180px; margin-top: 0px;">

                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQwl19B2TzhQTLW0ogadwsmdLC98xs7PtaJQ&amp;usqp=CAU" Width="49px" />
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Text="Contact Information" ForeColor="White"></asp:Label>
            
            </p>
           
            <p style="margin-left: 80px; width: 1096px;">

                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Text="Address: "></asp:Label>
                <asp:Label ID="Label27" runat="server" Text="Apartment 5 Buildling 2 Block C PWD Phase 2 Islamabad"></asp:Label>
            
            </p>

        </div>
        
        <div style="border: thin solid #1E90FF; margin-left:40px; margin-top: 10px; height: 45px; outline-width: 10px; outline-color:dodgerblue; width: 1177px;">
        
            <p style="margin-left: 0px; background-color:DodgerBlue; width: 1180px; margin-top: 0px; height: 47px;">
           
               <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Authoritites:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
               <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Times New Roman" Font-Size="Medium" Height="45px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="377px" AutoPostBack="True">
                 <asp:ListItem>Options</asp:ListItem>
                 <asp:ListItem>Register Students</asp:ListItem>
                 <asp:ListItem>Offer Courses</asp:ListItem>
                 <asp:ListItem>Assign Instructors</asp:ListItem>
                 <asp:ListItem>Generate Students Report</asp:ListItem>
                 <asp:ListItem>Generate Instructors Report</asp:ListItem>
                 <asp:ListItem>Generate Courses Report</asp:ListItem>
               </asp:DropDownList>

           </p>
            
        </div>

    </form>
</body>
</html>
