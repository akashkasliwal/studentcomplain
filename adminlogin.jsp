<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOD Login</title>
</head>
<body>
<% 
        String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(username.equals("sanjivani") && password.equals("sanjivani"))
		{
			session.setAttribute("username",username);
			response.sendRedirect("welcomeadmin.jsp");
		}
		else
		{
			%>
			<script language="javascript">
				alert("you have entered wrong details");
				location.replace("admin.html")
				
			</script>
					
			<%
			//response.sendRedirect("admin.html");
		}
		
%>

</body>
</html>