<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

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
                <a href="index.html">logout</a>
            </nav>
       
        
    </div>
    <div>
        <center><p><h1>Welcome, <%=session.getAttribute("username")%></h1></p></center>


<form action="showcomplain.jsp" method="Post" name="myform" id="regform"> 
        <h3>Enter details to see complains</h3>
        
            
         <label for="Class">Choose your Class:</label>
          <select id="Class" name="Class" form="regform">
                    <option value="FY">First year</option>
                    <option value="SE">Second Year</option>
                    <option value="TE">Third Year</option>
                    <option value="BE">Final Year</option>
          </select><br><br>
          <label for="dept">Choose your Department:</label>
          <select id="dept" name="dept" form="regform">
                    <option value="Computer">Computer</option>
                    <option value="Mechanical">Mechanical</option>
                    <option value="Civil">Civil</option>
                    <option value="IT">Information technology</option>
                    <option value="E & TC">E & TC</option>
                    <option value="Electrical">Electrical</option>
                    <option value="First year">First Year</option>
                   
          </select><br><br>
        
         <input type="reset" value="reset">  
         <input type="submit" value="submit"> 
        </form>
        </div>
        <div class="fixed-footer">
        <div class="container"><center>Copyright &copy; to Akash Kasliwal</center></div>        
    </div>
</body>
</html>