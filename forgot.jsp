
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
<body>
<%
//String currentPassword=request.getParameter("current");
String Newpass=request.getParameter("pass");
//String conpass=request.getParameter("confirm");
String email=request.getParameter("email");
String course=request.getParameter("class");
String connurl = "jdbc:mysql://localhost:3306/grievance";
Connection con=null;
String pass="";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "123456");
if(course.equals("FY"))
{
	
Statement st=con.createStatement();
int rs=st.executeUpdate("update fy set password='"+Newpass+"' where email='"+email+"'");
//while(rs.next()){
//id=rs.getInt(1);
//pass=rs.getString(3);
//}// System.out.println(id+ " "+pass);
//if(pass.equals(currentPassword)){
//Statement st1=con.createStatement();
//int i=st1.executeUpdate("update login set password='"+Newpass+"' where id='"+id+"'");

st.close();
}
else if(course.equals("SE"))
{
	
Statement st=con.createStatement();
int rs=st.executeUpdate("update se set password='"+Newpass+"' where email='"+email+"'");
//while(rs.next()){
//id=rs.getInt(1);
//pass=rs.getString(3);
//}// System.out.println(id+ " "+pass);
//if(pass.equals(currentPassword)){
//Statement st1=con.createStatement();
//int i=st1.executeUpdate("update login set password='"+Newpass+"' where id='"+id+"'");


st.close();
}
else if(course.equals("TE"))
{
	
Statement st=con.createStatement();
int rs=st.executeUpdate("update te set password='"+Newpass+"' where email='"+email+"'");
//while(rs.next()){
//id=rs.getInt(1);
//pass=rs.getString(3);
//}// System.out.println(id+ " "+pass);
//if(pass.equals(currentPassword)){
//Statement st1=con.createStatement();
//int i=st1.executeUpdate("update login set password='"+Newpass+"' where id='"+id+"'");


st.close();
}
else if(course.equals("BE"))
{
	
Statement st=con.createStatement();
int rs=st.executeUpdate("update be set password='"+Newpass+"' where email='"+email+"'");
//while(rs.next()){
//id=rs.getInt(1);
//pass=rs.getString(3);
//}// System.out.println(id+ " "+pass);
//if(pass.equals(currentPassword)){
//Statement st1=con.createStatement();
//int i=st1.executeUpdate("update login set password='"+Newpass+"' where id='"+id+"'");


st.close();
con.close();
//}
//else{
//out.println("Invalid Current Password");
//}
}
}
catch(Exception e){
out.println(e);
}
%>
<script language="javascript">
	alert("password changed successfully");
	location.replace("login.html")
	</script>
</body>
</html>