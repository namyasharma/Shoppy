<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email=session.getAttribute("email").toString();
String mobileNumber=request.getParameter("mobileNumber");
String password=request.getParameter("password");
int check=0;
try {
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="select * from users where email=\'"+email+"\' and password=\'"+password+"\'";
	ResultSet rs=st.executeQuery(q1);
	while(rs.next()){
		check=1;
		String q2="update users set mobilenumber=\'"+mobileNumber+"\' where email=\'"+email+"\'";
		st.executeUpdate(q2);
		response.sendRedirect("changeMobileNumber.jsp?msg=done");
	}
	if(check==0){
		response.sendRedirect("changeMobileNumber.jsp?msg=wrong");
	}
}
catch(Exception e) {
System.out.println(e);
}
%>