<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signUpStyle.css">
<title>Signup</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <!-- alt+shift+y word wrap- -->
      	<form action="signupAction.jsp" method="post">
    		<input type="text" name="name" placeholder="Enter your name" required>
    		<input type="email" name="email" placeholder="Enter your mail address" required>
    		<input type="number" name="mobileNumber" placeholder="Enter your number" required>
    		<select name="securityQuestion">
    			<option value="What was your first car?">What was your first car?</option>
    			<option value="What is the name of your first pet?">What is the name of your first pet?</option>
    			<option value="What  elementary school did you studied?">What  elementary school did you studied?</option>
    			<option value="What is your birthplace?">What is your birthplace?</option>
    		</select>
    		<input type="text" name="answer" placeholder="Enter your answer" required>
    		<input type="password" name="password" placeholder="Enter your password" required>
    		<input type="submit" name="signup">
    	</form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
	String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered !</h1>

<%} %>
<%
if("invalid".equals(msg)){

%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
   <h2 class="company">Shoppy</h2>
    <h3 class="h1" style="padding-top:2px; font-family: 'Merienda', cursive;font-size: 25px; color:#DA0037;">Buy and Sell clothes Online</h3>

    <p>Shoppy is an online shopping system that allows users to buy and sell clothes online</p>
        <div style="font-size: 100px;"><i class="fas fa-truck-pickup" style="color:#DA0037;"></i></div>

  </div>
</div>

</body>
</html>