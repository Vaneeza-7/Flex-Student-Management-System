<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link rel="stylesheet" href="mainstyle.css"/>
    <link rel="stylesheet" href="~/bootstrap.min.css" />
<script src="~/bootstrap.min.js"></script>
<%--    <link rel="stylesheet" href="bootstrap-4.4.1-dist/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
</head>
<body style="background-color:dodgerblue; height: 800px;">
<div class="container mx-auto" style="background-color:lavenderblush ; margin:0 auto; margin-left:auto; margin-right:auto ;  height: 700px"> 
  <h2>LogIn Form<img src="images/flex-logo-blue.png" alt="" float="left" padding= "70px" margin="5px" style="margin-left:auto; margin-right:auto" ></h2>
      <div>&nbsp;
          <form id="form1" runat="server" style="margin:0 auto; margin-left:auto; margin-right:auto" >
      <div class="form-group">
          <label for="exampleInputEmail1">ID</label>
        <input type="text" class="form-control" id="exampleInputId" aria-describedby="emailHelp" placeholder="Enter ID 21i-XXXX">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">UserName</label>
        <input type="email" class="form-control" id="exampleInputUsername2" aria-describedby="emailHelp" placeholder="Enter UserName">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter password">
      </div>
      <div class="form-group">
           
                <label for="role">Role:</label>
                <asp:DropDownList ID="ddlRole" runat="server">
                    <asp:ListItem Text="Student" Value="student"></asp:ListItem>
                    <asp:ListItem Text="Faculty" Value="faculty"></asp:ListItem>
                    <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
                </asp:DropDownList>
      </div>
      <a href="Home page.html"><button type="button" class="btn btn-primary" id="Button1" runat="server" text="Sign In" onclick="btnSignIn_Click">Sign In</button></a>
  </form>
       </div>
</div>
        <%-- <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />--%>      
</body>
</html>