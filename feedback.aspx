<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Assessment Form</title>
    <style type="text/css">
        body {
            font-weight: bold;
            text-align: center;
        }
        #filldate {
            height: 29px;
            width: 230px;
            margin-left: 66px;
        }
        #teacherName1 {
            height: 31px;
            width: 235px;
            margin-left: 132px;
        }
    </style>
</head>
<body style="background-color:deepskyblue">
    <form id="form1" runat="server" style="margin-left:auto; margin-right:auto">
        <div style="text-align:center">
            <h2 style="color:white">Teacher Assessment Form</h2>
            <hr />
            
            <input type="date" id="filldate" name="Date"/>&nbsp;
            <label for="filldate" style="color:white" >Date</label><br />
            <br />
            <input type="text" id="teacherName1" name="teacherName1"/>            
            <label for="teacherName1" style="color:white" >Teacher Name</label><br />
            <br />
            <br />
            <label for="DropDownList1" style="color:white" >Course Name</label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" style="margin-left: 20px">
            
            </asp:DropDownList>

            
                        

             
            
            <h3 style="color:white">Please rate your teacher based on the following criteria:</h3>
            <div>
                <h3 style="color:white">1. Knowledge and expertise in the subject matter:</h3>
                <input type="radio" id="knowledge0" name="knowledge" value="0" />
                <label for="knowledge0" style="color:white" >0 - Poor</label><br />
                <input type="radio" id="knowledge1" name="knowledge" value="1" />
                <label for="knowledge1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="knowledge2" name="knowledge" value="2" />
                <label for="knowledge2" style="color:white">2 - Good</label><br />
                <input type="radio" id="knowledge3" name="knowledge" value="3" />
                <label for="knowledge3" style="color:white">3 - Excellent</label><br />
            </div>
            <br />
            <div>
                <h3 style="color:white">2. Communication skills and clarity of teaching:</h3>
                <input type="radio" id="communication0" name="communication" value="0" />
                <label for="communication0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="communication1" name="communication" value="1" />
                <label for="communication1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="communication2" name="communication" value="2" />
                <label for="communication2" style="color:white">2 - Good</label><br />
                <input type="radio" id="communication3" name="communication" value="3" />
                <label for="communication3" style="color:white">3 - Excellent</label><br />
            </div>
            <br />
            <div>
                <h3 style="color:white">3. Availability and willingness to help students:</h3>
                <input type="radio" id="availability0" name="availability" value="0" />
                <label for="availability0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="availability1" name="availability" value="1" />
                <label for="availability1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="availability2" name="availability" value="2" />
                <label for="availability2" style="color:white">2 - Good</label><br />
                <input type="radio" id="availability3" name="availability" value="3" />
                <label for="availability3" style="color:white">3 - Excellent</label><br />
            </div>

            <div>
                <h3 style="color:white">4. Teacher comes to class on time:</h3>
                <input type="radio" id="classtime0" name="classtime" value="0" />
                <label for="classtime0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="classtime1" name="classtime" value="1" />
                <label for="classtime1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="classtime2" name="classtime" value="2" />
                <label for="classtime2" style="color:white">2 - Good</label><br />
                <input type="radio" id="classtime3" name="classtime" value="3" />
                <label for="classtime3" style="color:white">3 - Excellent</label><br />
            </div>

            <div>
                <h3 style="color:white">5. Teacher answers and encourages questions in class:</h3>
                <input type="radio" id="question0" name="question0" value="0" />
                <label for="question0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="question1" name="question1" value="1" />
                <label for="question1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="question2" name="question2" value="2" />
                <label for="question2" style="color:white">2 - Good</label><br />
                <input type="radio" id="question3" name="question3" value="3" />
                <label for="question3" style="color:white">3 - Excellent</label><br />
            </div>
            <div>
                <h3 style="color:white">6. Teacher comes in a neat nd professional attire:</h3>
                <input type="radio" id="attire0" name="attire0" value="0" />
                <label for="attire0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="attire1" name="attire1" value="1" />
                <label for="attire1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="attire2" name="attire2" value="2" />
                <label for="attire2" style="color:white">2 - Good</label><br />
                <input type="radio" id="attire3" name="attire3" value="3" />
                <label for="attire3" style="color:white">3 - Excellent</label><br />
            </div>


            <hr />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="White" BorderStyle="Double" ForeColor="#000066" Height="44px" Width="125px" />
        </div>
    </form>
</body>
</html>
