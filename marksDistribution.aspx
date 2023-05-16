<%@ Page Language="C#" AutoEventWireup="true" CodeFile="marksDistribution.aspx.cs" Inherits="marksDistribution" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Set Marks Distribution</title>
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

        

            <p>

                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

            </p>

            <p style="margin-left: 190px; margin-right: 165px; background-color: dodgerblue;">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="42px" OnClick="Button2_Click" Text="Add Eval" Width="121px" Font-Bold="True" Font-Names="Times New Roman"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Set Distribution" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Width="255px" OnClick="Button1_Click" />

                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>

            </p>
        
        
    </form>
</body>
</html>

