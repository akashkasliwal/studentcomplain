<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String course = request.getParameter("Class");
String dept = request.getParameter("dept");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "grievance";
String userid = "root";
String password = "123456";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" type="text/css" href="ak.css"></head>
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
<h2 align="center"><font><strong>Complains Registered till date</strong></font></h2>

<table align="center" cellpadding="10" cellspacing="10" border="2">
<table border="1">

<tr bgcolor="pink">
<font color="grey">
<td>complain no.</td>
<td>student</td>
<td>faculty</td>
<td>hostel</td>
<td>library</td>
<td>canteen</td>
<td>student section</td>
<td>supporting staff</td>
<td>sports</td>
<td>Date</td>
</font>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
if(course.equals("FY") && dept.equals("First year"))
{	
	//<h2>Complains of Class::FY </h2>
	out.println("Complains for Class:: First Year");
statement=connection.createStatement();
String sql ="select * from fycomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("SE") && dept.equals("Computer"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Second Year </font>& Department::<font color=blue> Computer </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from secomputercomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("SE") && dept.equals("Mechanical"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Second Year </font>& Department::<font color=blue> Mechanical </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from semechanicalcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("SE") && dept.equals("Civil"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Second Year </font>& Department::<font color=blue> Civil </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from secivilcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("SE") && dept.equals("IT"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Second Year </font>& Department::<font color=blue> IT </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from seitcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("SE") && dept.equals("E & TC"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Second Year </font>& Department::<font color=blue> E & TC </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from seentccomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("SE") && dept.equals("Electrical"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Second Year </font>& Department::<font color=blue> Electrical </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from seelectricalcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}

else if(course.equals("TE") && dept.equals("Computer"))
{
	
	out.println("<h3>Complains for Class:: <font color=blue>Third Year </font>& Department::<font color=blue> Computer </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from tecomputercomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("TE") && dept.equals("Mechanical"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Third Year </font>& Department::<font color=blue> Mechanical </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from temechanicalcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("TE") && dept.equals("Civil"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Third Year </font>& Department::<font color=blue> Civil </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from tecivilcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("TE") && dept.equals("IT"))
{
	out.println("<h3>Complains for Class:: <font color=blue>Third Year </font>& Department::<font color=blue> IT </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from teitcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("TE") && dept.equals("E & TC"))
{
	out.println("<h3>Complains for Class:: <font color=blue>Third Year </font>& Department::<font color=blue> E & TC </font></h3><br><br>");	
statement=connection.createStatement();
String sql ="select * from teentccomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("TE") && dept.equals("Electrical"))
{
	out.println("<h3>Complains for Class:: <font color=blue>Third Year </font>& Department::<font color=blue> Electrical </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from tecomputercomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("BE") && dept.equals("Computer"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Final Year </font>& Department::<font color=blue> Computer </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from becomputercomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("BE") && dept.equals("Mechanical"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Final Year </font>& Department::<font color=blue> Mechanical </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from bemechanicalcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("BE") && dept.equals("Civil"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Final Year </font>& Department::<font color=blue> Civil </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from becivilcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("BE") && dept.equals("IT"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Final Year </font>& Department::<font color=blue> IT </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from beitcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("BE") && dept.equals("E & TC"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Final Year </font>& Department::<font color=blue> E & TC </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from beentccomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
else if(course.equals("BE") && dept.equals("Electrical"))
{	
	out.println("<h3>Complains for Class:: <font color=blue>Final Year </font>& Department::<font color=blue> Electrical </font></h3><br><br>");
statement=connection.createStatement();
String sql ="select * from beelectricalcomplain";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="white">
<td><%=resultSet.getString("complain_no") %></td>
<td><%=resultSet.getString("student") %></td>
<td><%=resultSet.getString("faculty") %></td>
<td><%=resultSet.getString("hostel") %></td>
<td><%=resultSet.getString("library") %></td>
<td><%=resultSet.getString("canteen") %></td>
<td><%=resultSet.getString("studentsection") %></td>
<td><%=resultSet.getString("supportingstaff") %></td>
<td><%=resultSet.getString("sports") %></td>
<td><%=resultSet.getString("date") %></td>
</tr>
<%
}
}
connection.close();

} catch (Exception e) {
e.printStackTrace();
}

%>

</table>
</div>
<div class="fixed-footer">
        <div class="container"><center>Copyright &copy; to Akash Kasliwal</center></div>        
    </div>
</body>
</html>