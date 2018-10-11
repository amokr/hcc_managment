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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="styles.css" type="text/css" />
			
            
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/custom.js"></script>
<link rel="stylesheet" href="student1.css" type="text/css" />
<title>Student Profile</title>
</head>
<body>
<%session=request.getSession();  
        String n=(String)session.getAttribute("reg_no"); 
        String fname=null,lname=null,age=null,bdg=null,wgt=null;
        try{
        	PreparedStatement ps=null;
        	Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/hcc_database","Hcc_Admin","162049");
			 ps=con.prepareStatement("Select fname,lname,age,blood_gp,wght from student where reg_no=?");
			 ps.setString(1,n);
			 ResultSet rt=ps.executeQuery();
			 while(rt.next()){
				 fname=rt.getString(1);
				 lname=rt.getString(2);
				 age=rt.getString(3);
				 bdg=rt.getString(4);
				 wgt=rt.getString(5);
				 
			 }
        }catch(Exception e)
		{
		System.out.println(e);
		}
%> 
<div id="container">
	<div id="header">
    	<h1><a href="/">NITK <strong>HCC</strong> CENTER</a></h1>
        <h2></h2>
        <div class="clear"></div>
    </div>
   
   <div id="nav">
    	<ul class="sf-menu dropdown">
        	<li class="selected"><a href="index1.html">Home</a></li>
            <li><a class="has_submenu" href="examples.html">Facilities</a>
            	
            </li>
            <li><a class="has_submenu" href="#">About US</a>
            	
            </li>
            
            <li><a href="#">Contact</a></li>
        </ul>
    </div>
          
  

<!--
User Profile Sidebar by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->


<div class="container">			
	<!-- SIDEBAR USERPIC -->
			
	<div class="profile-userpic">
		
      <!--img src="http://keenthemes.com/preview/metronic/theme/assets/admin/pages/media/profile/profile_user.jpg" class="img-responsive" alt=""-->

				</div>
				
<!-- END SIDEBAR USERPIC -->
			
	<!-- SIDEBAR USER TITLE -->
		
		<div class="profile-usertitle">
			
		<div class="profile-usertitle-name">
		
				<%=n%>	
		</div>
				
		
		</div>
			
	<!-- END SIDEBAR USER TITLE -->
			
	<!-- SIDEBAR BUTTONS -->
		
		<div class="profile-userbuttons">
			
		<button type="button" class="btn btn-success btn-sm">Appointment</button>
			
		<button type="button" class="btn btn-danger btn-sm">Medical History</button>
	
			</div>
<div>
  

    <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
  
}

li {
    float: left;
}

li a {
    display: block;
    color: black;
    text-align: center;
    padding: 70px;
    text-decoration: none;
}

</style>

<ul>
  <li><a href="#name">Name:&nbsp <%=fname+" "+lname%></a></li>
  <li><a href="#dob">Age:&nbsp<%=age%></a></li>
  <li><a href="#blood">BG:&nbsp<%=bdg %></a></li>
  <li><a href="#weight">Wt:&nbsp<%=wgt %></a></li>
</ul>

</div>
</div>
    
		

				
	<div class="profile-usermenu">
				
	<ul class="nav">
	
	<li>
			
							
	<a href="#">
						
	<i class="glyphicon glyphicon-user"></i>
				
	Account Settings </a>
					
	</li>
	
	<li>
						
	<a href="student_edit_profile.jsp">
				
	<i class="glyphicon glyphicon-ok"></i>
						
	Edit Profile </a>
			
	</li>
						
<li>
							
<a href="Home_page.jsp">
							
<i class="glyphicon glyphicon-flag"></i>
							
Log-Out </a>
						
</li>
					
</ul>
				
</div>

		</div>
	
	</div>

		
</div>

	</div>

</div>



</br>
</br>







    	<div class="clear"></div>
    </div>
<div id="footer">
      <div class="footer-content">  
    </div>  
</div>
</div>
 
</body>
</html>