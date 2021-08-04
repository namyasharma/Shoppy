<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="settingsHeader.jsp" %>
			<%@include file="footer.jsp" %>
				<html>

				<head>
					<link rel="stylesheet" href="css/changeDetails.css">
					<script src='https://kit.fontawesome.com/a076d05399.js'></script>
					<title>Change Mobile Number</title>
				</head>

				<body>
					<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
						<h3 class="display-4 alert">Mobile Number changed successfully</h3>
						<%} %>
							<%
if("wrong".equals(msg)){
%>
								<h3 class="display-4 alert">Recheck your password again</h3>
								<%} %>
									<form action="changeMobileNumberAction.jsp" method="post">
										<h3 class="h4">Enter new mobile number</h3>
										<input class="input-style" type="number" name="mobileNumber" placeholder="Enter your new Mobile Number" required>
										<h3 class="h4">Enter password for security</h3>
										<input class="input-style" type="password" name="password" placeholder="Enter password for Security" required>
										<button style="margin-top: 30px;" class="btn text-center button" type="submit">Save&nbsp;&nbsp;<i class="fas fa-save"></i></button>
									</form>
				</body>
				<br>
				<br>
				<br>

				</html>