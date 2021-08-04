<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html>

	<head>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src='https://kit.fontawesome.com/a076d05399.js'></script>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Merienda:wght@400;700&family=Raleway:wght@100;200;300;400;500;600;700&family=Roboto:wght@100;300;400;500;700&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="css/signUpStyle.css">
		<title>Login</title>
	</head>

	<body>
		<div id='container'>
			<div class='signup'>
				<form action="LoginAction.jsp" method="post">
					<input type="email" name="email" placeholder="Enter Email" required>
					<input type="password" name="password" placeholder="Enter  password" required>
					<input type="submit" value="Login"> </form>
				<h2><a href="signup.jsp">SignUp</a></h2>
				<h2><a href="forgotPassword.jsp">Forgot Password?</a></h2> </div>
			<div class='whysignLogin'>
				<%
  	String msg=request.getParameter("msg");
  if("notExist".equals(msg)){
  %>
					<h1>Incorrect Username or Password</h1>
					<%} %>
						<%
  if("Invalid".equals(msg)){
  %>
							<h1>Some thing Went Wrong! Try Again !</h1>
							<%} %>
								<h2 class="company">Shoppy</h2>
								<h3 class="h1" style="padding-top:2px; font-family: 'Merienda', cursive;font-size: 25px; color:#DA0037;">Buy and Sell clothes Online</h3>
								<p>Shoppy is an online shopping system that allows users to buy and sell clothes online.</p>
								<div style="font-size: 90px;"><i class="fas fa-tshirt" style="color:#DA0037;"></i></div>
			</div>
		</div>
	</body>

	</html>