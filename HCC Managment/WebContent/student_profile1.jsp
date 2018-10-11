<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ page import="java.io.IOException,
    java.io.PrintWriter,
    java.sql.Connection,
    java.sql.DriverManager,
    java.sql.PreparedStatement,
    java.sql.ResultSet,

    javax.servlet.ServletException,
    javax.servlet.annotation.WebServlet,
    javax.servlet.http.HttpServlet,
    javax.servlet.http.HttpServletRequest,
    javax.servlet.http.HttpServletResponse,
    javax.servlet.http.HttpSession"
 %>
 <%@ page import="com.Java_class_package.Database_Connectivity"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student_profile</title>
<!--  i added -->
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>User profile form requirement</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha256-3dkvEK0WLHRJ7/Csr0BZjAWxERc5WH7bdeUya2aXxdU= sha512-+L4yy6FRcDGbXJ9mPG8MT/3UCDzwR9gPeyFNMCtInsol++5m3bk2bXWKdZjvybmohrAsn3Ua5x8gfLnbE1YkOg==" crossorigin="anonymous">
    <!-- Bootstrap Core CSS -->
<!--     <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-7s5uDGW3AHqw6xtJmNNtr+OBRJUlgkNJEo78P4b0yRw= sha512-nNo+yCHEyn0smMxSswnf/OnX6/KwJuZTlNZBjauKhTK0c+zT+q5JOCx0UFhXQ6rJR9jg6Es8gPuD2uZcYDLqSw==" crossorigin="anonymous">

    <!-- Custom CSS -->
<!-- till this -->
<style>
iv.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-allign: left;
}

table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 90%;
padding: 15px;
    
   
}

 th {
    border: 1px solid #dddddd;
    height: 50px;
    text-align: center;
    padding: 15px;
}
nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
}


nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}

article {
     background-color: #DCDCDC;
    margin-left: 170px;
    border-left: 0px solid gray;
    padding: 0px;
    overflow: hidden;
}
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}
#main{
	 transition: margin-left .5s;
    padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>
<%session=request.getSession();  
        String n=(String)session.getAttribute("reg_no"); 
        String msg=(String)session.getAttribute("msg"); 
        String fname=null,lname=null,email=null,pwd=null,age=null,gender=null,block=null,pno=null,bdg=null,wgt=null;
        try{
        	PreparedStatement ps=null;
        	Connection con=(Connection)new Database_Connectivity().connectfun();
			 ps=con.prepareStatement("Select *from student where reg_no=?");
			 ps.setString(1,n);
			 ResultSet rt=ps.executeQuery();
			 while(rt.next()){
				 fname=rt.getString(2);
				 lname=rt.getString(3);
				 email=rt.getString(4);
				 pwd=rt.getString(5);
				 age=rt.getString(6);
				 gender=rt.getString(7);
				 block=rt.getString(8);
				 pno=rt.getString(9);
				 bdg=rt.getString(10);
				 wgt=rt.getString(11);
			 }
        }catch(Exception e)
		{
		System.out.println(e);
		}
       // session.setAttribute("reg_no",null); 
%> 

<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="Patientlogin.jsp" target="iframe">Appointment</a>
  <a href="medical_history.jsp" target="iframe">Medical History</a>
  <a href="student_edit_profile.jsp" target="iframe">Edit Profile</a>
  <a href="Home_page.jsp" style="text-decoration: none">Log-Out</a>
</div>
     
<div class="container" id="main">

<header>
   <h1 style="text-align:center">Student profile</h1>
     <h3 style="text-align:right">Hello&nbsp<%= fname+" "+lname%></h3>


    <img src="p1.png" alt="profile" align="right" width="50px" height="50px" >



   <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Options</span>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
    document.body.style.backgroundColor = "white";
}
</script>
</header>
<!-- here i added -->
<div align ="center" class="container">
<div class="row">
<div class="col-md-10 ">
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend></legend>
<br></br>
<br></br>
<br></br>
<!-- Text input-->




<div class="form-group">
  <label class="col-md-4 control-label" for="Name (Full name)">Registration no</label>  
  <div class="col-md-4">
 <div class="input-group">
       <div class="input-group-addon">
        <i class="fa fa-user">
        </i>
       </div>
       <input id="Name (Full name)" value="<%= n%>" readonly="" type="text" class="form-control input-md">
      </div>

    
  </div>

  
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Date Of Birth">Age</label>  
  <div class="col-md-4">

  <div class="input-group">
       <div class="input-group-addon">
     <i class="fa fa-user-plus"></i>
        
       </div>
       <input id="Date Of Birth" value="<%= age%>" readonly="" type="text" class="form-control input-md">
      </div>
  
    
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Phone number ">Gender</label>  
  <div class="col-md-4">
  <div class="input-group">
       <div class="input-group-addon">
     <i class="fa fa-venus-mars"></i>
        
       </div>
    <input id="Gender" value="<%= gender%>" readonly="" type="text" class="form-control input-md">
    
      </div>
  
  </div>
</div>
<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Phone number ">Blood_group</label>  
  <div class="col-md-4">
  <div class="input-group">
       <div class="input-group-addon">
     <i class="fa fa-tint"></i>
        
       </div>
    <input id="Blood" value="<%= bdg%>" readonly="" type="text" class="form-control input-md">
    
      </div>
  
  </div>
</div>
<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Phone number ">Weight</label>  
  <div class="col-md-4">
  <div class="input-group">
       <div class="input-group-addon">
     <i class="fa fa-user"></i>
        
       </div>
    <input id="Blood" value="<%= pno%>" readonly="" type="text" class="form-control input-md">
    
      </div>
  
  </div>
</div>
<!-- Text inpit -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Phone number ">Hostal_block</label>  
  <div class="col-md-4">
  <div class="input-group">
       <div class="input-group-addon">
     <i class="fa fa-home"></i>
        
       </div>
    <input id="Hostal" value="<%= block%>" readonly="" type="text" class="form-control input-md">
    
      </div>
  
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Phone number ">Phone number </label>  
  <div class="col-md-4">
  <div class="input-group">
       <div class="input-group-addon">
     <i class="fa fa-phone"></i>
        
       </div>
    <input id="Phone number" value="<%= pno%>" readonly="" type="text" class="form-control input-md">
    
      </div>
  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Email Address">Email Address</label>  
  <div class="col-md-4">
  <div class="input-group">
       <div class="input-group-addon">
     <i class="fa fa-envelope-o"></i>
        
       </div>
    <input id="Email Address" type="text" value="<%= email%>" class="form-control input-md" readonly="">
    
      </div>
  
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Phone number ">Password</label>  
  <div class="col-md-4">
  <div class="input-group">
       <div class="input-group-addon">
     <i class="fa fa-key"></i>
        
       </div>
    <input id="Phone number" type="text"  value="<%= pwd%>" class="form-control input-md" readonly="">
    
      </div>
  
  </div>
</div>

</fieldset>
</form>
</div>
</div>
   </div>
    <!-- jQuery Version 1.11.1 -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


<!-- this line -->
<iframe name="iframe" width="1162px" height="650px" align="left" scrolling="auto" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0">
  
</iframe>
  
  </article>
<footer></footer>

</div>

</body>
</html>