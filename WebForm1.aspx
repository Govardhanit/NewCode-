<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Bokking_Flight_Tickets.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking Flight Tickets</title>
</head>
    <style>
        input[type="text"] {
            padding:5px;
            font-size:16px;
            border:1px solid gray;
            border-radius:5px;
            margin-right:20px;
            
            color:darkred;     
        }
        input[type="text"]:hover{
            background-color:lightgray;
            font-family:'Times New Roman', Times, serif
        }
        input[type="datetime-local"] {
            padding:5px;
            font-size:16px;
            border:1px solid gray;
            border-radius:5px;
            margin-bottom:10px;
            color:darkred;
        }
        input[type="datetime-local"]:hover{
            background-color:aquamarine;
        }
        #output {
            margin-top: 10px;
            font-size: 16px;
            font-weight: bold;
        }
        input[type="radio"]+label {
            margin: auto;
            font-family:'Times New Roman', Times, serif
        }
        input[type="radio"]  {
            font-size: 16px;
            margin:auto;
        }
        input[type="checkbox"]+label {
            margin-right:10px;
        }
     
        .form-mail{
            width:500px;
            margin:auto;
        }
        .Phone-number {
            width: 500px;
            margin: 0 auto;
        }
        .Upload-Photo {
            width: 500px;
            margin: 0 auto;
        }
        .Date-fly {
            margin: 0 auto;
            width: 500px;
        }
        .submit-button {
            display: inline-block;
            padding: 12px 24px;
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            text-transform: uppercase;
            background-color:blue;
            color: white;
            cursor: pointer;
        }
            .submit-button:hover {
                background-color: seagreen;
            }
    </style>
<body style="background-image: url(https://images.unsplash.com/photo-1594671515324-ea48fea744d5?ixlib=rb-4.0.3&amp;ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YWlybGluZSUyMHRpY2tldHxlbnwwfHwwfHw%3D&amp;w=1000&amp;q=80/>)">
    <h1> <i>Flight Booking</i> </h1>
    <!--First and Last name input field-->
   <form>
    <label for="fname">First Name:</label>
        <input type="text" id="First Name" name="First Name"/><br />
       <br />
        <label for="lname">Last Name:</label>
        <input type="text" id="Last Name" name="Last Name"/> 
       <br />
  <br />     
    <!--DOB Input field-->
        <label for="dob">Date of Birth:</label>     
        <input type="datetime-local"/> <br /> 
        <p id="output"></p>       <!---used Id sector-->
    <!--Gender using Radio button-->
        <label for="Genders"><b>Genders:</b></label><br />
        <input type="radio" id="Male" name="gender" value="male"/>
        <label for="male">Male</label><br />
        <input type="radio" id="Female" name="gender" value="female"/>
        <label for="female">Female</label><br />
        <input type="radio" id="Others" name="gender" value="Others"/>
        <label for="Others">Others</label><br />
    <br />
    <!---languges known using checkbox button-->
        <label for="languages"><b>Languages Known:</b></label><br />
        <input type="checkbox" id="english" name="languges" value="english" />
        <label for="english">English</label><br />
        <input type="checkbox" id="french" name="languages" value="french" />
        <label for="french">French</label><br />
        <input type="checkbox" id="spanish" name="languages" value="spanish" />
        <label for="spanish">Spanish</label><br />
        <input type="checkbox" id="german" name="languages" value="german" />
        <label for="german">German</label><br />   
    <br />
    <!--Mail ID -->
    <div class="form-mail">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email"/>
        </div>
    <br />
    <!--Phone number-->
    <div class="Phone-number">
            <label for="phone">
                Phone:
            </label>
            <input type="tel" id="phone" name="phone" /> 
    </div>
<br />
    <!--Upload Photo-->
       <div class="Upload-Photo">  
           <label for="photo">
               Upload Photo:</label>
            <input type="file" id="photo" name="photo" />
        </div>
    <br />
    <!--Start and End date-->
        <div class="Date-fly">
            <label for="startDate">Start Date:</label>
            <input type="date" id="startDate" name="startDate" class="Date-fly" />
        <label for="EndDate">End Date:</label>
            <input type="date" id="EndDate" name="EndDate" class="Date-fly" />
            </div>
  <!--<h3>Submitted Data</h3>
  <p>First Name: <span id="displayFirstName"></span></p>
  <p>Last Name: <span id="displayLastName"></span></p>
</div>-->
     <!--Submit Button-->       
        <div class="submit-button">
            <label for="submit-button">Submit</label>
            </div>
        <!--clera fields-->
        <input type="reset" value="Clear Fields" />      
    </form>  
</body>
</html>
