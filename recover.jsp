<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>processing</title>
<link rel="stylesheet" type="text/css" href="ak.css">
</head>
<body>
<div class="top">
      
    <img src="logo.jpg" align="left" width="8%">
        <h1><center><p style="color:yellow">Sanjivani College of Engineering,Kopargaon</p></center></h1>
    <h2><p style="color:white"><marquee direction="left">Student Grievance System</marquee></p></h2>
   </div>

    <div class="fixed-header">
       
            <nav>
                <a href="index.html">Home</a>
                <a href="about.html">About Us</a>
                <a href="register.html">Registration</a>
                <a href="login.html#container1">Login</a>
                <a href="contact.html">Contact Us</a>
                <a href="admin.html">admin login</a>
                <a href="index.html">Logout</a>
            </nav>
       
        
    </div>
    <div>
<center><p><h2>Thanks</h2><h1> <%=session.getAttribute("username")%> </h1><h3>Your complain will be taken into consideration soon...</h3></p></center>
	

 
</div>
<div class="fixed-footer">
        <div class="container"><center>Copyright &copy; to Akash Kasliwal</center></div>        
    </div>
</body>
</html>