<%@ page import="java.sql.*"%>

<%
 String userName = request.getParameter("userName"); 
 
 String password = request.getParameter("password"); 
 
 Class.forName ("com.mysql.jdbc.Driver"); 
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/devopspractice", "root", "root");
 Statement st = con.createStatement(); 
 ResultSet rs; 
 rs = st.executeQuery("select * from user_reg where uname='" + userName + "' and upass='" + password + "'");
	if (rs.next()) 
		{ 
			session.setAttribute("userid", userName); 
			//response.sendRedirect("success.jsp"); 
		} 
	else 
		{ 
			out.println("Invalid password <a href='index.jsp'>try again</a>"); 
}

%>