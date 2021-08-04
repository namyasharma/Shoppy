<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%

String email=request.getParameter("email");
String password=request.getParameter("password");
String pass=request.getParameter("password");
String emailA=request.getParameter("email");
if("admin@gmail.com".equals(email) && "admin".equals(password)) {
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else {
	int z=1;
	try {
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		String q1="select * from users";
		String q2="select * from users where email= ' " +email +" ' and password= ' " +password +" ' ";
		String a1="select * from users where email=";
		String a2=" and password= ";
		String a3=a1.concat(email);
		String a4=a3.concat(a2);
		String a5=a4.concat(password);
		//String q3="select * from users where email=\'"+ email+"\' and password= \'"+password+" \' ";
		// "insert into info values(7,'rakesh');";
		 //"insert into info values("+sid+",\'"+sname+"\')";
		String q6="select * from users where email=\'"+email+"\' and password=\'"+password+"\';";
		System.out.println(q6);
		ResultSet rs=st.executeQuery(q6);
		while(rs.next()) {
			//String emailAddress=rs.getString("email");
			//System.out.println(emailAddress);
			z=1;
			System.out.println("z="+z);
			session.setAttribute("email",email);
			response.sendRedirect("home.jsp");
		}
		if(z==0)
			response.sendRedirect("login.jsp?msg=notExist");
	}
	catch(Exception e) {
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=Invalid");
	}
}

%>