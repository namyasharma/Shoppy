<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="settingsHeader.jsp" %>
			<%@include file="footer.jsp" %>
				<html>

				<head>
					<link rel="stylesheet" href="css/changeDetails.css">
					<script src='https://kit.fontawesome.com/a076d05399.js'></script>
					<title>Change Security Question</title>
				</head>

				<body>
					<%
String msg=request.getParameter("msg");
if("done".equals(msg)){
%>
						<h3 class="display-4 alert">Security question changed successfully </h3>
						<%} %>
							<%
if("wrong".equals(msg)){
%>
								<h3 class="display-4 alert">Seems like password is wrong</h3>
								<%} %>
									<form action="changeSecurityQuestionAction.jsp" method="post">
										<h3 class="h4">Select Your New Securtiy Question</h3>
										<select class="input-style" name="securityQuestion">
											<option value="What was your first car?">What was your first car?</option>
											<option value="What is the name of your first pet?">What is the name of your first pet?</option>
											<option value="What elementary school did you attend?">What elementary school did you attend?</option>
											<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
										</select>
										<h3 class="h4">Enter Your New Answer</h3>
										<input class="input-style" type="text" name="newAnswer" placeholder="Enter new Answer" required>
										<h3 class="h4">Enter Password For Security</h3>
										<input class="input-style" type="password" name="password" placeholder="Enter password for Security" required>
										<button style="margin-top: 30px;" class="btn text-center button" type="submit">Save&nbsp;&nbsp;<i class="fas fa-save"></i></button>
									</form>
				</body>
				<br>
				<br>
				<br>

				</html>