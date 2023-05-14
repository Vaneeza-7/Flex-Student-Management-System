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
<body style="background:url('images/library.jpg')">
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
                <h3 style="color:white">1. The teacher has knowledge of the subject and shows expertise:</h3>
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
                <h3 style="color:white">2. The teacher communicates effectively with the students:</h3>
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
                <h3 style="color:white">3. The teacher is available in office hourse for students:</h3>
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
                <input type="radio" id="question0" name="question" value="0" />
                <label for="question0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="question1" name="question" value="1" />
                <label for="question1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="question2" name="question" value="2" />
                <label for="question2" style="color:white">2 - Good</label><br />
                <input type="radio" id="question3" name="question" value="3" />
                <label for="question3" style="color:white">3 - Excellent</label><br />
            </div>
            <div>
                <h3 style="color:white">6. Teacher comes in a neat and professional attire:</h3>
                <input type="radio" id="attire0" name="attire" value="0" />
                <label for="attire0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="attire1" name="attire" value="1" />
                <label for="attire1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="attire2" name="attire" value="2" />
                <label for="attire2" style="color:white">2 - Good</label><br />
                <input type="radio" id="attire3" name="attire" value="3" />
                <label for="attire3" style="color:white">3 - Excellent</label><br />
            </div>
            <div>
                <h3 style="color:white">7. Teacher delivers and covers the course content effectively:</h3>
                <input type="radio" id="content0" name="content" value="0" />
                <label for="content0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="content1" name="content" value="1" />
                <label for="content1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="content2" name="content" value="2" />
                <label for="content2" style="color:white">2 - Good</label><br />
                <input type="radio" id="content3" name="content" value="3" />
                <label for="content3" style="color:white">3 - Excellent</label><br />
            </div>
            <div>
                <h3 style="color:white">8. Teacher maintains the discipline and decorum of the class:</h3>
                <input type="radio" id="decorum0" name="decorum" value="0" />
                <label for="decorum0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="decorum1" name="decorum" value="1" />
                <label for="decorum1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="decorum2" name="decorum" value="2" />
                <label for="decorum2" style="color:white">2 - Good</label><br />
                <input type="radio" id="decorum3" name="decorum" value="3" />
                <label for="decorum3" style="color:white">3 - Excellent</label><br />
            </div>
            <div>
                <h3 style="color:white">9. Teacher returns marked assessments in given time:</h3>
                <input type="radio" id="marking0" name="marking" value="0" />
                <label for="marking0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="marking1" name="marking" value="1" />
                <label for="marking1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="marking2" name="marking" value="2" />
                <label for="marking2" style="color:white">2 - Good</label><br />
                <input type="radio" id="marking3" name="marking" value="3" />
                <label for="marking3" style="color:white">3 - Excellent</label><br />
            </div>
            <div>
                <h3 style="color:white">10. Overall impression and performance of the teacher:</h3>
                <input type="radio" id="overall0" name="overall" value="0" />
                <label for="overall0" style="color:white">0 - Poor</label><br />
                <input type="radio" id="overall1" name="overall" value="1" />
                <label for="overall1" style="color:white">1 - Fair</label><br />
                <input type="radio" id="overall2" name="overall" value="2" />
                <label for="overall2" style="color:white">2 - Good</label><br />
                <input type="radio" id="overall3" name="overall" value="3" />
                <label for="overall3" style="color:white">3 - Excellent</label><br />
            </div>
            <div>
                <h3 style="color:white">Write any Comments or Suggestions (0-50 characters):</h3>
                <asp:TextBox ID="TextBox1" runat="server" Height="98px" style="margin-left: 0px" Width="380px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>


            </div>
            <hr />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" BackColor="White" BorderStyle="Double" ForeColor="#000066" Height="44px" Width="125px" />
        </div>
    </form>
</body>
</html>
