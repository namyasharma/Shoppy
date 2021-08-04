<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String product_id=request.getParameter("id");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="delete from cart where email=\'"+email+"\' and product_id=\'"+product_id+"\' and address is NULL";
	st.executeUpdate(q1);
		response.sendRedirect("myCart.jsp?msg=removed");
	}
	
catch(Exception e){
	System.out.println(e);
}
%>