<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String category=request.getParameter("category");
	String price=request.getParameter("price");
	String active=request.getParameter("active");
	try{
		Connection con=ConnectionProvider.getCon();
		String q1="insert into product values(?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(q1);
		ps.setString(1, id);
		ps.setString(2, name);
		ps.setString(3, category);
		ps.setString(4 ,price);
		ps.setString(5,active);
		ps.executeUpdate();
		response.sendRedirect("sell.jsp?msg=done");
	}catch(Exception e) {
		response.sendRedirect("sell.jsp?msg=wrong");
		System.out.println(e);
	}
%>