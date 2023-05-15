<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attendanceOptions.aspx.cs" Inherits="attendanceOptions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance setting</title>
    <style type="text/css">
        #form1 {
            height: 842px;
        }
        .custom-table {
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            margin: auto;
        }

        .custom-table th, .custom-table td {
            border: 1px solid #ccc;
            padding: 8px;
        }

        .custom-table th {
            background-color: dodgerblue;
            text-align: left;
            color: white;
        }

        .custom-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .custom-table tr:hover {
            background-color: #ddd;
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin-left: 4px; background-color: cornflowerblue; height:60px;">

        </div>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          <p style="background-color: dodgerblue; height: 40px; margin-top: 0px; margin-left: 171px; margin-right: 165px">

            

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" BorderColor="DodgerBlue" BorderStyle="Solid" BorderWidth="5px" Font-Bold="True" Font-Names="Times New Roman" Font-Overline="False" Font-Size="X-Large" ForeColor="White" Height="28px" style="margin-left: 60px; margin-top: 0px" Text="Choose Attendance Options" Width="403px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            

            </p>

                
            &nbsp;&nbsp;&nbsp;
                

            <p style="left: auto; right: auto; text-align: center;">

                &nbsp;
            <label for="filldate" style="color:black; font-family:'Times New Roman'" >Select Date</label><br />
        <input type="date" id="filldate" name="filldate" style="font-family: 'Times New Roman', Times, serif; font-size: medium; height: 45px; left: auto; right: auto; width: 377px;"/>
            <br />
             <label for="DropDownList1" style="color:Black; font-family:'Times New Roman'" >Select Course</label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Times New Roman" Font-Size="Medium" Height="45px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="377px" >
            
            </asp:DropDownList>
           
            <br />
            <br />

            <label for="DropDownList2" style="color:black; font-family:'Times New Roman'" >Select Section</label><br />
            <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Times New Roman" Font-Size="Medium" Height="45px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="377px" >
            
            </asp:DropDownList>
           

            </p>

            <p style="margin-left: 190px; margin-right: 165px; background-color: dodgerblue;">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Proceed" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Width="255px" OnClick="Button2_Click" />

                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>

            </p>
        
        
    </form>
</body>
</html>
