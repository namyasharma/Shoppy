<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="homeHeader.jsp" %>
			<%@include file="footer.jsp" %>
				<html>

				<head>
					<link rel="stylesheet" href="css/messageUs.css">
					<script src='https://kit.fontawesome.com/a076d05399.js'></script>
					<title>Message Us</title>
					<style>
					h3 {
						color: #402218;
						text-align: center;
					}
					</style>
				</head>

				<body>
					<div style="text-align: center; font-size: 50px; margin:20px;">Message Us <i class="fas fa-comments"></i></div>
					<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
%>
						<h3 class="display-4 alert">Message sent successfully. Our team will contact you soon...</h3>
						<%} %>
							<%
if("invalid".equals(msg)){
%>
								<h3 class="display-4 alert">Some thing Went Wrong! Try Again!</h3>
								<%} %>
									<form action="messageUsAction.jsp" method="post">
										<input class="input-style" type="text" name="subject" style="color:#FFF5DA; width: 60%;height: 50px; border-radius:20px" placeholder="Subject" required>
										<br>
										<br>
										<textarea class="input-style" name="body" style="color:#FFF5DA; width: 60%;height: 150px;" placeholder="Leave your comments here" required></textarea>
										<button class="btn text-center button" type="submit">Send&nbsp;<i class="far fa-paper-plane"></i></button>
									</form>
									<br>
									<br>
									<br> </body>

				</html>