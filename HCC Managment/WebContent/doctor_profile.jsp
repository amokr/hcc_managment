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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.container {
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

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<title>Doctor_profile</title>
</head>
<body>
<%session=request.getSession();  
        String n=(String)session.getAttribute("reg_no"); 
        String fname=null,lname=null,age=null,bdg=null,wgt=null;
        try{
        	PreparedStatement ps=null;
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/hcc_database","root","162049");
			 ps=con.prepareStatement("Select fname,lname from doctor where dr_id=?");
			 ps.setString(1,n);
			 ResultSet rt=ps.executeQuery();
			 while(rt.next()){
				 fname=rt.getString(1);
				 lname=rt.getString(2);
				 /*age=rt.getString(3);
				 bdg=rt.getString(4);
				 wgt=rt.getString(5);*/
				 
			 }
        }catch(Exception e)
		{
		System.out.println(e);
		}
%> 
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">Appointment Schedule</a>
  <a href="doctor_edit_profile.jsp" target="iframe">Edit Profile</a>
  <a href="Home_page.jsp" style="text-decoration: none">Log-Out</a>
</div>
     
<div class="container">

<header>
   <h1 style="text-align:center">Doctor profile</h1>
     <h3 style="text-align:right">WellCome Dr. <%= fname+" "+lname%></h3>


    <img src="dr.png" alt="profile" align="right" width="50px" height="50px" >



   <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Options</span>

<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
</header>

<article>
<table align="right">
  <tr>
    <th>Name : <%=fname +" "+ lname %></th>
    <th>Specialization</th>
    <th>Age&nbsp&nbsp&nbsp</th>
     <th>Blood Group</th>
  </tr>
</table>
<iframe name="iframe" width="1162px" height="650px" align="left" scrolling="auto" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0">
  
</iframe>
  
  </article>
<footer></footer>

</div>
</body>
</html>