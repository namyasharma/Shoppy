<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="settingsHeader.jsp" %>
			<%@include file="footer.jsp" %>
				<html>

				<head>
					<link rel="stylesheet" href="css/changeDetails.css">
					<script src='https://kit.fontawesome.com/a076d05399.js'></script>
					<title>Change Password</title>
				</head>

				<body>
					<%
String msg=request.getParameter("msg");
if("noMatch".equals(msg)){
%>
						<h3 class="display-4 alert">Retype your new password again</h3>
						<%} %>
							<%if("wrong".equals(msg)){ %>
								<h3 class="display-4 alert">Check your previous password</h3>
								<%} %>
									<%if("done".equals(msg)){ %>
										<h3 class="display-4 alert">Password changed successfully</h3>
										<%} %>
											<%if("invalid".equals(msg)){ %>
												<h3 class="display-4 alert">Some thing went wrong..... please try again</h3>
												<%} %>
													<form action="changePasswordAction.jsp" method="post">
														<h3 class="h4">Enter previous password</h3>
														<input class="input-style" type="password" name="oldPassword" placeholder="Enter old Password" required>
														<h3 class="h4">Enter new password</h3>
														<input class="input-style" type="password" name="newPassword" placeholder="Enter new Password" required>
														<h3 class="h4">Reenter new password</h3>
														<input class="input-style" type="password" name="confirmPassword" placeholder="Confirm your password" required>
														<button style="margin-top: 30px;" class="btn text-center button" type="submit">Save&nbsp;&nbsp;<i class="fas fa-save"></i></button>
													</form>
				</body>
				<br>
				<br>
				<br>

				</html>