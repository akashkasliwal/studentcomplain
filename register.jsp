<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.sql.SQLException"%>
<html>
<body>
<%
String first_name=request.getParameter("uname");
String pass=request.getParameter("pass");
//String city_name=request.getParameter("city_name");
String email=request.getParameter("email");
String course=request.getParameter("class");
String dept=request.getParameter("dept");

//Class.forName("com.mysql.jdbc.Driver");
//System.out.println("connected");
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/grievance", "root", "123456");
//System.out.println("Successfull");
if(course.equals("FY"))
{
try
{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("connected");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grievance", "root", "123456");
System.out.println("Successfull");
Statement st=conn.createStatement();


String strQuery = "SELECT COUNT(*) FROM fy where email='"+email+"'";
ResultSet rs = st.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
//out.println(Countrow);
if(Countrow.equals("0")){
int i=st.executeUpdate("insert into fy values('"+first_name+"','"+email+"','"+pass+"','"+course+"','"+dept+"',null)");
System.out.println("successfull");
%>
<script language="javascript">
alert("Registered successfully !");
</script>
<%
}
else{
//out.println("<h1>User name or Email already exists !</h1>");
	%>
	<script language="javascript">
	alert("User name or Email already exists !");
	location.replace("login.html");
	</script>
	<%
}

//int i=st.executeUpdate("insert into user1 values('"+first_name+"','"+last_name+"')");
//out.println("Registered successfully !");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}


else if(course.equals("SE") )
{
   try
   {
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("connected");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grievance", "root", "123456");
	System.out.println("successfully inserted");
	Statement st=conn.createStatement();
	//System.out.println("successfully done");

	String strQuery = "SELECT COUNT(*) FROM se where email='"+email+"'";
	ResultSet rs = st.executeQuery(strQuery);
	rs.next();
	String Countrow = rs.getString(1);
	//System.out.println(Countrow);
	if(Countrow.equals("0")){
	int i=st.executeUpdate("insert into se values('"+first_name+"','"+email+"','"+pass+"','"+course+"','"+dept+"',null)");
	System.out.println("successfull");
	%>
	<script language="javascript">
	alert("Registered successfully !");
	location.replace("login.html");
	</script>
	<%
	}
	else{
		%>
		<script language="javascript">
		alert("User name or Email already exists !");
		</script>
		<%

	}
	//int i=st.executeUpdate("insert into user1 values('"+first_name+"','"+last_name+"')");
	//out.println("Registered successfully !");
	}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}   

else if(course.equals("TE"))
{
   try
   {
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("connected");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grievance", "root", "123456");
	System.out.println("Successfull");
	Statement st=conn.createStatement();


	String strQuery = "SELECT COUNT(*) FROM te where email='"+email+"'";
	ResultSet rs = st.executeQuery(strQuery);
	rs.next();
	String Countrow = rs.getString(1);
	//out.println(Countrow);
	if(Countrow.equals("0")){
	int i=st.executeUpdate("insert into te values('"+first_name+"','"+email+"','"+pass+"','"+course+"','"+dept+"',null)");
	System.out.println("successfull");
	%>
	<script language="javascript">
	alert("Registered successfully !");
	location.replace("login.html");
	</script>
	<%
	}
	
	else{
		%>
		<script language="javascript">
		alert("User name or Email already exists !");
		</script>
		<%

	}
	//int i=st.executeUpdate("insert into user1 values('"+first_name+"','"+last_name+"')");
	//out.println("Registered successfully !");
	}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}   

else
{
   try
   {
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("connected");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grievance", "root", "123456");
	System.out.println("Successfull");
	Statement st=conn.createStatement();


	String strQuery = "SELECT COUNT(*) FROM be where email='"+email+"'";
	ResultSet rs = st.executeQuery(strQuery);
	rs.next();
	String Countrow = rs.getString(1);
	//out.println(Countrow);
	if(Countrow.equals("0")){
	int i=st.executeUpdate("insert into be values('"+first_name+"','"+email+"','"+pass+"','"+course+"','"+dept+"',null)");
	System.out.println("successfull");
	%>
	<script language="javascript">
	alert("Registered successfully !");
	location.replace("login.html");
	</script>
	<%
	}
	else{
		%>
		<script language="javascript">
		alert("User name or Email already exists !");
		</script>
		<%

	}
	//int i=st.executeUpdate("insert into user1 values('"+first_name+"','"+last_name+"')");
	//out.println("Registered successfully !");
	}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
} 
%>

	

</body>
</html>        