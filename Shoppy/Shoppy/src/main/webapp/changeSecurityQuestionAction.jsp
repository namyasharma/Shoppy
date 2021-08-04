<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String securityQuestion=request.getParameter("securityQuestion");
String newAnswer=request.getParameter("newAnswer");
String password=request.getParameter("password");
int check=0;
try {
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="select * from users where email=\'"+email+"\' and password=\'"+password+"\'";
	ResultSet rs=st.executeQuery(q1);
	while(rs.next()){
		check=1;
		String q2="update users set securityQuestion=\'"+securityQuestion+"\', answer=\'"+newAnswer+"\' where email=\'"+email+"\'";
		st.executeUpdate(q2);
		response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
	}
	if(check==0){
		response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");
	}
}
catch(Exception e) {
System.out.println(e);

}
	
%>