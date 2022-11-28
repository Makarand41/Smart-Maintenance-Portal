<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>
<%@page import="rcpit.*" %> 



<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Baxster an Admin Panel Category Flat Bootstrap Responsive Website Template | Inbox :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Baxster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link rel="icon" href="favicon.ico" type="image/x-icon" >
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class="sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right dev-page-sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" id="cbp-spmenu-s1">
					<div class="scrollbar scrollbar1">
						<ul class="nav" id="side-menu">
						
						
							<li>
								<a href="http://localhost:8080/Portal2/add.html"><i class=""></i>1]  Add Department</a>
							</li>
							
							<li>
								<a href="http://localhost:8080/Z/welcome.html"><i class=""></i>2   Delete Account</a>
							</li>
							
							<li>
								<a href="http://localhost:8080/Z/welcome.html"><i class=""></i>1  Register</a>
							</li>

							
						
							
							
							
							
							
							
							
						</ul>
					</div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				

				
				
				<div class="clearfix"> </div>
			</div>
			
			
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<!--grids-->
				<div class="grids">
					
							
<H1>Road Mantainance !!!!!!!!!!!!!!!</H1>


 		<form    action="addroad" method="post" >
 		
 		
  <div class="form-group"><label for="exampleInputEmail1">RName</label>
<input type="text" class="form-control" id="exampleInputEmail1"   name="RName"  placeholder="Enter Name">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">location</label>
    <input type="text" class="form-control" id="exampleInputPassword1"  name="location" placeholder="Mobile No">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Deadline</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="Deadline" placeholder="Balance">
  </div>
  
   Department
 <select>

<option>Select</option>
<%
try
{
	Connection con=ConnectDB.connect();
 	Statement st=con.createStatement();
 	String query=("select * from  department ");
 	
 	ResultSet rs=st.executeQuery(query);
 	
 	while(rs.next())
 	{
 		%>
 		<option><%=rs.getString("name")%></option>	
 		<% 
 	}
}

catch(Exception e)
{
	System.out.println(e);
}	
%>


</select>
    

  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>


						</div>
					</div>
					

				</div>
				<!--//grids-->
				
			</div>
		</div>
		