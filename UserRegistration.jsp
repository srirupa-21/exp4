<%@ page import="java.sql.*"%>
<% 
	String userName = request.getParameter("userName"); 
	String password = request.getParameter("password"); 
	String email = request.getParameter("email"); 
	Class.forName ( "com.mysql.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "root");
	Statement st = con.createStatement(); 
	int i = st.executeUpdate("insert into user_reg(uname,upass,uemail) values (userName + "','" + password + "', '" + email + "');
	if (i > 0) { 
				response.sendRedirect("welcome.jsp"); 
			} 
	else { 
		response.sendRedirect("index.jsp"); 
		} 
%>