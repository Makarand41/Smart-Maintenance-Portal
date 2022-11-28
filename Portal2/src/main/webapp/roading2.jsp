<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="rcpit.*" %> 

    

<!DOCTYPE HTML>
<html>
<head>
<title>Minimal an Admin Panel Category Flat Bootstrap Responsive Website Template | Forms :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script src="js/jquery.min.js"> </script>
<script src="js/bootstrap.min.js"> </script>
  
<!-- Mainly scripts -->
<script src="js/jquery.metisMenu.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<!-- Custom and plugin javascript -->
<link href="css/custom.css" rel="stylesheet">
<script src="js/custom.js"></script>
<script src="js/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});
			

			
		});
		</script>

<!----->

</head>





<body>
<div id="wrapper">
     <!----->
        <nav class="navbar-default navbar-static-top" role="navigation">
             <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <h1> <a class="navbar-brand" href="index.html">RBI Bank</a></h1>         
			   </div>
			 <div class=" border-bottom">
        	
     
       
            <!-- Brand and toggle get grouped for better mobile display -->
		 
		   <!-- Collect the nav links, forms, and other content for toggling -->

			<div class="clearfix">
       
     </div>
	  
		    <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
				
                   
                   
     
                    

          
    
                  
                </ul>
            </div>
			</div>
        </nav>
		 <div id="page-wrapper" class="gray-bg dashbard-1">
       <div class="content-main">

 	<!--grid-->
 	<div class="grid-form">
 		<div class="grid-form1">
 		<h3 id="forms-example" class="">Register</h3>
 		<form    action="addroad" method="post" >
 		
 		
  <div class="form-group"><label for="exampleInputEmail1">RName</label>
<input type="text" class="form-control" id="exampleInputEmail1"   name="RName"  placeholder="Enter Name">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">location</label>
    <input type="text" class="form-control" id="exampleInputPassword1"  name="location" placeholder="Mobile No">
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
    
    
    
    
    
    
    
    
    
    
  </div>
</div>  




   
  
    <div class="form-group">
    <label for="exampleInputPassword1">Deadline</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="Deadline" placeholder="Balance">
  </div>
  
      
  
      
  
  
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>
<!----->

<!---->

<!---->



<!---->

 	</div>
 	<!--//grid-->
		<!---->
<div class="copy">
            <p> &copy; 2022 RBI Bank. All Rights Reserved  </p>	    </div>
		</div>
		</div>
		<div class="clearfix"> </div>
       </div>
     <!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
<!---->


</body>
</html>

    