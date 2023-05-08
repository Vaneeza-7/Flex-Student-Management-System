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
<body style="background-color:lavender">
<div class="container" style="background-color:lavender">
  <h2>LogIn Form<img src="images/flex-logo-blue.png" alt="" float="left" padding= "70px" margin="5px" ></h2>
      <div>&nbsp;<form id="form1" runat="server" >
      <div class="form-group">
          <label for="exampleInputEmail1">ID</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter ID 21i-XXXX">
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">UserName</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter UserName">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter password">
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Confirm Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm password">
      </div>
      <a href="Home page.html"><button type="button" class="btn btn-primary" id="Button1" runat="server" text="Sign In" onclick="btnSignIn_Click">Register</button></a>
  </form>
       </div>
</div>
        <%-- <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />--%>      
</body>
</html>

          