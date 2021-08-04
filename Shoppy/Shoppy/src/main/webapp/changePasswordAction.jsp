<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String oldPassword=request.getParameter("oldPassword");
String newPassword=request.getParameter("newPassword");
String confirmPassword=request.getParameter("confirmPassword");
if(!confirmPassword.equals(newPassword)){
	response.sendRedirect("changePassword.jsp?msg=notMatch");
}
else{
	int check=0;
	try {
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		String q1="select * from users where email=\'"+email+"\' and password=\'"+oldPassword+"\'";
		ResultSet rs=st.executeQuery(q1);
		while(rs.next()){
			check=1;
			String q2="update users set password=\'"+newPassword+"\' where email=\'"+email+"\'";
			st.executeUpdate(q2);
			response.sendRedirect("changePassword.jsp?msg=done");
		}
		if(check==0){
			response.sendRedirect("changePassword.jsp?msg=notMatch");
		}
	}
	catch(Exception e) {
	System.out.println(e);
	}
}
%>