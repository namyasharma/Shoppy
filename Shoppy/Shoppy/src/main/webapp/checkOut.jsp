<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>

</script>
</head>
<body>
<br>
<table>
 <%
 	String email=session.getAttribute("email").toString();
 try{
 Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
     String q3="select * from users where email=\'"+email+"\'";
     ResultSet rs2=st.executeQuery(q3);
     while(rs2.next()){
      %>
 <hr style="width: 100%">
<form action="addressPayementForOrderAction.jsp" method="post">
 <div class="left-div">
 <h3>Enter Address</h3>
<input class="input-style" type="text" name="address" value="<%=rs2.getString(7)%>" placeholder="Enter address" required>
 </div>

<div class="right-div">
<h3>Enter city</h3>
<input class="input-style" type="text" name="city" value="<%=rs2.getString(8)%>" placeholder="Enter city" required>
</div> 

<div class="left-div">
<h3>Enter State</h3>
<input class="input-style" type="text" name="state" value="<%=rs2.getString(9)%>" placeholder="Enter state" required>
</div>

<div class="right-div">
<h3>Enter country</h3>
<input class="input-style" type="text" name="country" value="<%=rs2.getString(10)%>" placeholder="Enter country" required>
</div>
<h3 style="color: red">*If there is no address its mean that you did not set you address!</h3>
<h3 style="color: red">*This address will also updated to your profile</h3>
<hr style="width: 100%">
<div class="left-div">
<h3>Select way of Payment</h3>
 <select class="input-style" name="paymentMethod">
 <option value="Cash on Delivery">Cash on Delivery</option>
 <option value="Online Payment">Online Payment</option>
 </select>
</div>

<div class="right-div">
<h3>Pay online on this rashika@pay.com</h3>
<input class="input-style" type="text" name="transactionId"  placeholder="Enter transactionId" >
<h3 style="color: red">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h3>
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Mobile Number</h3>
<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3)%>" placeholder="Enter mobile number" required>
<h3 style="color: red">*This mobile number will also updated to your profile</h3>
</div>
<div class="right-div">
<h3 style="color: red">*If you enter wrong transaction id then your order will we can cancel!</h3>
<button class="button" type="submit">Proceed to order and save<i class='far fa-arrow-alt-circle-right'></i></button>
<h3 style="color: red">*Fill form correctly</h3>
</div>
</form>
<%
     }
}
catch(Exception e){
System.out.println(e);
}
%>
      <br>
      <br>
      <br>

</body>
</html>