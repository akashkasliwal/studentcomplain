<%@ page import="java.sql.*,java.util.*" %>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login page</title>

</head>

<body>

<%! String userdbEmail;
String username;
String userdbPsw;

String userclass;
String userdept;


%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/grievance";

String user = "root";

String dbpsw = "123456";



String sql  = "select * from fy where email=? and password=? ";
String sql1 = "select * from se where email=? and password=?";
String sql2 = "select * from te where email=? and password=?";
String sql3 = "select * from be where email=? and password=?";



String email = request.getParameter("email");

String password = request.getParameter("password");
String course = request.getParameter("class");



try{
	
Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);
if((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))))

{
	if(course.equals("FY"))
	{	
       ps = con.prepareStatement(sql);

       ps.setString(1, email);

       ps.setString(2, password);
	}   
	else if(course.equals("SE"))
	{	
       ps = con.prepareStatement(sql1);

       ps.setString(1, email);

       ps.setString(2, password);
	}   
	else if(course.equals("TE"))
	{	
       ps = con.prepareStatement(sql2);

       ps.setString(1, email);

       ps.setString(2, password);
	}   
	else if(course.equals("BE"))
	{	
       ps = con.prepareStatement(sql3);

       ps.setString(1, email);

       ps.setString(2, password);
	}   


rs = ps.executeQuery();

if(rs.next())

{ 

userdbEmail = rs.getString("email");

userdbPsw = rs.getString("password");

userclass=rs.getString("class");

userdept=rs.getString("department");

username=rs.getString("name");

if(email.equals(userdbEmail) && password.equals(userdbPsw) && course.equals("FY"))

{

	session.setAttribute("username",username);
	session.setAttribute("course",course);
	session.setAttribute("userdept",userdept);


response.sendRedirect("welcome.jsp"); 

}
else if(email.equals(userdbEmail) && password.equals(userdbPsw) && course.equals("SE"))

{

	session.setAttribute("username",username);
	session.setAttribute("course",course);
	session.setAttribute("userdept",userdept);


response.sendRedirect("welcome.jsp"); 

}
else if(email.equals(userdbEmail) && password.equals(userdbPsw) && course.equals("TE"))

{

	session.setAttribute("username",username);
	session.setAttribute("course",course);
	session.setAttribute("userdept",userdept);


response.sendRedirect("welcome.jsp"); 

}
else if(email.equals(userdbEmail) && password.equals(userdbPsw) && course.equals("BE"))

{

	session.setAttribute("username",username);
	session.setAttribute("course",course);
	session.setAttribute("userdept",userdept);


response.sendRedirect("welcome.jsp"); 

}
else
{
	%>
	<script language="javascript">
	alert("Wrong Details");
	</script>
	
	<%
	
}


}
}


}
catch(SQLException sqe)

{

	%>
	<script language="javascript">
	alert("invalid class");
	</script>
	<%

} 

%>
    
	<script language="javascript">
	alert("Something went wrong");
	location.replace("login.html")
	</script>
	
	</body>

</html>