<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complain reister</title>

<link rel="stylesheet" type="text/css" href="ak.css">  

</head>
<body bgcolor="white">
<div class="top">
      
    <img src="logo.jpg" align="left" width="8%">
        <h1><center><p style="color:Yellow">Sanjivani College of Engineering,Kopargaon</p></center></h1>
    <h2><p style="color:white"><marquee direction="left">Student Grievance System</marquee></p></h2>
   </div>

    <div class="fixed-header">
       
            <nav>
                <a href="index.html">Home</a>
                <a href="about.html">About Us</a>
                <a href="register.html">Registration</a>
                <a href="login.html">Login</a>
                <a href="contact.html">Contact Us</a>
                <a href="admin.html">admin login</a>
                 <a href="index.html">logout</a>
            </nav>
       
        
    </div>
<div>
<center><h2><p>Welcome, <%=session.getAttribute("username")%></p></h2></center>


<!--  String course=request.getParameter("course");-->
<!--  <img src="C:\Users\Shri\Downloads\akash\akash\a.png" align="right" width="50%">-->
<form action="complain.jsp" method="Post" name="myform" id="regform"> 
        <h2>Complain form</h2>
        
            
          <label for="query">Choose your complain field:</label>
          <select id="query" name="query" form="regform">
                    <option value="student">Regarding Students </option>
                    <option value="faculty">Regarding Faculty</option>
                    <option value="hostel">Regarding Hostel</option>
                    <option value="library">Regarding Library</option>
                     <option value="canteen">Regarding canteens</option>
                      <option value="studentsection">Student Section</option>
                       <option value="supportingstaff">Supporting Staff</option>
                        <option value="sports">Regarding Sports</option>
          </select><br><br>
        
          
          Enter complain here::<textarea name="complain" form="regform"></textarea><br><br>
         <input type="reset" value="reset">  
         <input type="submit" value="submit"> 
        </form>
</div>
<div class="fixed-footer">
        <div class="container"><center>Copyright &copy; to Akash Kasliwal</center></div>        
    </div>
</body>
</html>