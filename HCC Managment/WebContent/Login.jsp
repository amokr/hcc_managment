<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home_page</title>
<style>
#myBtn{
float:right;
}
/* The Modal (background) */
.modal {
    display: block; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Text box*/
.text{
width:200px;
height:26px;
border:1px solid blue;
color:black;
font-size:14px;
margin-left:10px;
margin-bottom:10px;
}
input[type=submit]
{
width:100px;
text-align:center;
font-size:18px;
border-radius:4px;
background-color:#4286f4;
color:white;
border:1px solid black;
margin-left:51px;
}
input[type=submit]:hover
{
color:black;
}
/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 25%;
	border-width:3px;
border-style:solid;
border-color:black;
border-radius:6px;
}
h1{
height:30px;
text-align:center;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
span{
color:red;
}
.clos
{
text-decoration:none;
float:right;
font-size:18px;
}
label{
  width:150px;
  float:left;
  text-align:center;
}
</style>
</head>
<body>
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
  <h1><label>Login</label><a href="Home_page.jsp" class="clos">X</a></h1>
   <div class="form">
   <form method="post" action="login_check">  <!-- for verifying the user id in login_check java page--> 
   <table>
   <tr>
   <td>
   Login As
   </td>
   <td>
   <select class="text" name="usertype">
  
  <option value="doctor" >doctor</option>
  <option value="student">student</option>
  <option value="reciptionist">Receptionist</option>
  <option value="pharmacist">Pharmacist</option>
  <option value="lab Attendant">Lab Attendant</option>
  <option value="admin">Admin</option>
</select>
   </td>
   </tr>
   <tr>
   <td>
   User id<span>*</span>
   </td>
   <td>
   <input type="text" class="text" name="uid" placeholder="Registration id" required/>
   </td>
   </tr>
   <tr>
   <td>
   Password<span>*</span>
   </td>
   <td>
   <input type="password"  class="text" name="pwd" placeholder="valid Password" required/>
   </td>
   </tr>
   <tr>
   <td>
   
   </td>
   <td>
   <input type="submit" value="Login" name="submit"/>
   </td>
   </tr>
   </table>
   </form>
   </div>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
function check()
{
	alert("Working");
	}
</script>
</body>
</html>