<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="footer.jsp" %>
			<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
			<html>

			<head>
				<link rel="stylesheet" href="css/addressPaymentForOrderStyle.css">
				<script src='https://kit.fontawesome.com/a076d05399.js'></script>
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
				<title>Home</title>
				<script>
				if(window.history.forward(1) != null) window.history.forward(1);
				</script>
			</head>

			<body>
				<br>
				<table class="table table-striped table-hover">
					<thead>
						<%
String email=session.getAttribute("email").toString();
int total=0;
int sno=0;

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="select sum(total) from cart where email=\'"+email+"\' and address is NULL";
	System.out.println(q1);
	ResultSet rs=st.executeQuery(q1);
	while(rs.next()) {
		total=rs.getInt(1);
	}
%>
							<tr>
								<th scope="col"><a href="myCart.jsp" style="color:black;"><i class='fas fa-arrow-circle-left'> Go Back</i></a></th>
								<th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"><% out.println(total);%></i> </th>
							</tr>
					</thead>
					<thead>
						<tr>
							<th scope="col">S.No</th>
							<th scope="col">Product Name</th>
							<th scope="col">Category</th>
							<th scope="col"><i class="fa fa-inr"></i> price</th>
							<th scope="col">Quantity</th>
							<th scope="col">Sub Total</th>
						</tr>
					</thead>
					<tbody>
						<%
      ResultSet rs1 =st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email=\'"+email+"\' and cart.address is NULL");
     //id, name, category, price, active, email, product_id, quantity, total,address, state, country,mobileNumber, orderDate,deliveryDate,paymentMethod,transactionId, status, price
      while(rs1.next())
      {
      %>
							<tr>
								<%sno=sno+1; %>
									<td>
										<%out.println(sno); %>
									</td>
									<td>
										<%=rs1.getString(2) %>
									</td>
									<td>
										<%=rs1.getString(3) %>
									</td>
									<td><i class="fa fa-inr"><%=rs1.getString(4) %></i> </td>
									<td>
										<%=rs1.getString(8) %>
									</td>
									<td><i class="fa fa-inr"><%=rs1.getString(9) %></i> </td>
							</tr>
							<%}%>
								<%
     String q3="select * from users where email=\'"+email+"\'";
     ResultSet rs2=st.executeQuery(q3);
     while(rs2.next()){
      %>
					</tbody>
				</table>
				<hr style="margin-top:5%;width: 100%; color:white;height:5px;">
				<form action="addressPaymentForOrderAction.jsp" method="post">
					<div class="left-div">
						<h3 style="text-align: left;" class="h4">Enter Address</h3>
						<input class="input-style" type="text" name="address" value="<%=rs2.getString(7)%>" placeholder="Enter address" required> </div>
					<div class="right-div">
						<h3 class="h4">Enter city</h3>
						<input class="input-style" type="text" name="city" value="<%=rs2.getString(8)%>" placeholder="Enter city" required> </div>
					<div class="left-div">
						<h3 class="h4">Enter State</h3>
						<input class="input-style" type="text" name="state" value="<%=rs2.getString(9)%>" placeholder="Enter state" required> </div>
					<div class="right-div">
						<h3 class="h4">Enter country</h3>
						<input class="input-style" type="text" name="country" value="<%=rs2.getString(10)%>" placeholder="Enter country" required> </div>
					<h3 style="color: white;" class="h6">*If there is no address its mean that you did not set you address!</h3>
					<h3 style="color: white;" class="h6">*This address will also updated to your profile</h3>
					<hr style="width: 100%; color:white;height:5px;">
					<div class="left-div">
						<h3>Select way of Payment</h3>
						<select class="input-style" name="paymentMethod">
							<option value="Cash on Delivery">Cash on Delivery</option>
							<option value="Online Payment">Online Payment</option>
						</select>
					</div>
					<div class="right-div">
						<h3>Pay online on this rashika@pay.com</h3>
						<input class="input-style" type="text" name="transactionId" placeholder="Enter transactionId">
						<h3 style="color: white;" class="h6">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h3> </div>
					<hr style="width: 100%; color:white;height:5px;">
					<div class="left-div">
						<h3 class="h4">Mobile Number</h3>
						<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3)%>" placeholder="Enter mobile number" required>
						<h3 style="color: white;" class="h6">*This mobile number will also updated to your profile</h3> </div>
					<div class="right-div">
						<h3 style="color: white;" class="h6">*If you enter wrong transaction id then your order will we can cancel!</h3>
						<button class="button" type="submit">Proceed to order and save<i class='far fa-money-bill'></i></button>
						<h3 style="color: white;" class="h6">*Fill form correctly</h3> </div>
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
					<br> </body>

			</html>