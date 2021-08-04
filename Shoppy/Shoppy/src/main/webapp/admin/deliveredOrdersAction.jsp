<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
   String id=request.getParameter("id");
   String email=request.getParameter("email");
   String status="Delivered";
   try{
   		Connection con=ConnectionProvider.getCon();
   		Statement st=con.createStatement();
   		String q1="update cart set status=\'"+status+"\' where product_id=\'"+id+"\' and email=\'"+email+"\' and address is not NULL";
   		st.executeUpdate(q1);
   			response.sendRedirect("ordersReceived.jsp?msg=delivered");
   		}
   		
   	catch(Exception e){
   		System.out.println(e);
   		response.sendRedirect("ordersReceived.jsp?msg=wrong");
   	}
   
   %>