<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
	String email=request.getParameter("email");
	String mobileNumber=request.getParameter("mobileNumber");
	String securityQuestion=request.getParameter("securityQuestion");
	String answer=request.getParameter("answer");
	String newPassword=request.getParameter("newPassword");
	
	int check=0;
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		String q2="select * from users where email= \'" +email+"\'and mobilenumber=\'" +mobileNumber+"\' and securityQuestion=\'"+  securityQuestion +"\' and answer=\'" +answer+"\'";
		System.out.println(q2);
		String q1="select * from users where email= ' " +email +" ' and mobilenumber= ' " +mobileNumber +" ' and securityQuestion= ' " +securityQuestion +"' and answer= ' " + answer+" ' ";
		ResultSet rs=st.executeQuery(q2);
		while(rs.next()) {
			check=1;
			System.out.println(rs.getString(1)+"\n" + rs.getString(2));
			st.executeUpdate("update users set password= \'" + newPassword+"\' where email= \'" +email+"\'");
			
			response.sendRedirect("forgotPassword.jsp?msg=done");
		}
		if(check==0) {
			response.sendRedirect("forgotPassword.jsp?msg=invalid");
		}
	}
	catch(Exception e) {
		System.out.println(e);
	}
%>