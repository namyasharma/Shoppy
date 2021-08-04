<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String status="processing";
try{
	Connection con=ConnectionProvider.getCon();
	String q1="update cart set status=? where email=? and status=\'bill\'";
	PreparedStatement ps=con.prepareStatement(q1);
	ps.setString(1, status);
	ps.setString(2, email);
	ps.executeUpdate();
	response.sendRedirect("home.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>