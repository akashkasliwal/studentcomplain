<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,java.sql.SQLException,java.io.*,javax.servlet.*,java.util.Date"%>

<html>
<body>
<% 
/*
String student=request.getParameter("student");
String faculty=request.getParameter("faculty");
String hostel=request.getParameter("hostel");
String library=request.getParameter("library");
String canteen=request.getParameter("canteen");
String studentsection=request.getParameter("student section");
String supportingstaff=request.getParameter("supporting staff");
String sports=request.getParameter("sports");
String complaian=request.getParameter("complain");
*/

String query=request.getParameter("query");
String complain=request.getParameter("complain");
//String course=request.getParameter("course");
//String course=(String)session.getAttribute("course");
Object o=session.getAttribute("course");
Object e=session.getAttribute("email");
Object d=session.getAttribute("userdept");
//Date date = new Date();
try
{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("connected");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/grievance", "root", "123456");
System.out.println("Successfull");
if(o.equals("FY"))
{
	
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into fycomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into fycomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into fycomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into fycomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into fycomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into fycomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into fycomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into fycomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
}

else if(o.equals("SE"))
{
	if(d.equals("Computer"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secomputercomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secomputercomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secomputercomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("Mechanical"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into semechanicalcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into semechanicalcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into semechanicalcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into semechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into semechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into semechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into semechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into semechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("Civil"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secivilcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secivilcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secivilcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into secivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("IT"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seitcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seitcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seitcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("E & TC"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seentccomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seentccomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seentccomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seentccomplainn values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("Electrical"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seelectricalcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seelectricalcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seelectricalcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into seelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
}

else if(o.equals("TE"))
{
  if(d.equals("Computer"))
  {
	 // out.print( "<h2 align = \"center\">" +date.toString()+"</h2>");
if(query.equals("student"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecomputercomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("faculty"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecomputercomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");

response.sendRedirect("recover.jsp"); 
//out.println("Sucessfull");

}
if(query.equals("hostel"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecomputercomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("library"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("canteen"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("studentsection"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("supportingstaff"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("sports"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
}
  
  if(d.equals("Mechanical"))
  {
	  
if(query.equals("student"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into temechanicalcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("faculty"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into temechanicalcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");

response.sendRedirect("recover.jsp"); 
//out.println("Sucessfull");

}
if(query.equals("hostel"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into temechanicalcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("library"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into temechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("canteen"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into temechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("studentsection"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into temechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("supportingstaff"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into temechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("sports"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into temechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
}
  
  if(d.equals("Civil"))
  {
	  
if(query.equals("student"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecivilcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("faculty"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecivilcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");

response.sendRedirect("recover.jsp"); 
//out.println("Sucessfull");

}
if(query.equals("hostel"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecivilcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("library"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("canteen"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("studentsection"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("supportingstaff"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("sports"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into tecivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
}
  
  if(d.equals("IT"))
  {
	  
if(query.equals("student"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teitcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("faculty"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teitcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");

response.sendRedirect("recover.jsp"); 
//out.println("Sucessfull");

}
if(query.equals("hostel"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teitcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("library"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("canteen"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("studentsection"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("supportingstaff"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("sports"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
}
  
  if(d.equals("E & TC"))
  {
	  
if(query.equals("student"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teentccomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("faculty"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teentccomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");

response.sendRedirect("recover.jsp"); 
//out.println("Sucessfull");

}
if(query.equals("hostel"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teentccomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("library"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("canteen"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("studentsection"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("supportingstaff"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teentccomplainn values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("sports"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
}
  
  if(d.equals("Electrical"))
  {
	  
if(query.equals("student"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teelectricalcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("faculty"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teelectricalcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");

response.sendRedirect("recover.jsp"); 
//out.println("Sucessfull");

}
if(query.equals("hostel"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teelectricalcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("library"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("canteen"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("studentsection"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("supportingstaff"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
if(query.equals("sports"))
{
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into teelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
System.out.println("successfull");
//response.sendRedirect("logout.jsp"); 
out.println("Sucessfull");

response.sendRedirect("recover.jsp"); 
}
}
  
  
}

else if(o.equals("BE"))
{
	
	if(d.equals("Computer"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becomputercomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becomputercomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becomputercomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becomputercomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("Mechanical"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into bemechanicalcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into bemechanicalcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into bemechanicalcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into bemechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into bemechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into bemechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into bemechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into bemechanicalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("Civil"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becivilcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becivilcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becivilcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into becivilcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("IT"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beitcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beitcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beitcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beitcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("E & TC"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beentccomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beentccomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beentccomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beentccomplainn values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beentccomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
	  
	  if(d.equals("Electrical"))
	  {
		  
	if(query.equals("student"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beelectricalcomplain values(null,'"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("faculty"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beelectricalcomplain values(null,'"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");

	response.sendRedirect("recover.jsp"); 
	//out.println("Sucessfull");

	}
	if(query.equals("hostel"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beelectricalcomplain values(null,'"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("library"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("canteen"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("studentsection"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("supportingstaff"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"','"+null+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	if(query.equals("sports"))
	{
	Statement st=conn.createStatement();

	int i=st.executeUpdate("insert into beelectricalcomplain values(null,'"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+null+"','"+complain+"',( select current_timestamp))");
	System.out.println("successfull");
	//response.sendRedirect("logout.jsp"); 
	out.println("Sucessfull");

	response.sendRedirect("recover.jsp"); 
	}
	}
}
}
catch(Exception p)
{
System.out.print(p);
p.printStackTrace();
}




%>
</body>
</html>