<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="footer.jsp" %>
			<html>

			<head>
				<link rel="stylesheet" href="css/bill.css">
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
				<script src='https://kit.fontawesome.com/a076d05399.js'></script>
				<title>Bill</title>
			</head>

			<body style="background-color:#FFA900;">
				<%
String email=session.getAttribute("email").toString();
try{
	int total=0;
	int sno=0;
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="select sum(total) from cart where email=\'"+email+"\' and status=\'bill\'";
	System.out.println(q1);
	ResultSet rs=st.executeQuery(q1);
	while(rs.next()) {
		total=rs.getInt(1);
	}
	ResultSet rs2=st.executeQuery("select * from users inner join cart where cart.email=\'"+email+"\' and cart.status=\'bill\'");
	//1		2			3							4						5				6				7			8		9		10			11			12					13	
	//name, email, mobilenumber, securityQuestion, answer, password, address, city,state, country,email, product_id, quantity, total, address, city, state, country, mobileNumber, orderDate, deliveryDate,paymentMethod, transactionId, status,price, city
	//14		15		16
	while(rs2.next()) {
%>
					<h3 style=" font-family: 'Merienda', cursive;font-size: 35px;text-align:center;" class="title">Shoppy Bill </h3>
					<hr>
					<div class="left-div">
						<h3 class="h6">Name: <%=rs2.getString(1) %> </h3></div>
					<div class="right-div-right">
						<h3 class="h6">Email:  <%out.println(email); %></h3></div>
					<div class="right-div">
						<h3 class="h6">Mobile Number:  <%=rs2.getString(18)%></h3></div>
					<div class="left-div">
						<h3 class="h6">Order Date:  <%=rs2.getString(19) %> </h3></div>
					<div class="right-div-right">
						<h3 class="h6">Payment Method:  <%=rs2.getString(21) %> </h3></div>
					<div class="right-div">
						<h3 class="h6">Expected Delivery: <%=rs2.getString(20) %>  </h3></div>
					<div class="left-div">
						<h3 class="h6">Transaction Id: <%=rs2.getString(23) %>  </h3></div>
					<div class="right-div-right">
						<h3 class="h6">City: <%=rs2.getString(25) %>  </h3></div>
					<div class="right-div">
						<h3 class="h6">Address:  <%=rs2.getString(15) %> </h3></div>
					<div class="left-div">
						<h3 class="h6">State:  <%=rs2.getString(16)%> </h3></div>
					<div class="right-div-right">
						<h3 class="h6">Country:  <%=rs2.getString(17) %> </h3></div>
					<hr>
					<%break; }%>
						<br>
						<h3 class="display-6">Product Details</h3>
						<table id="customers">
							<tr>
								<th>S.No</th>
								<th>Product Name</th>
								<th>category</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Sub Total</th>
							</tr>
							<%
  String q3="select * from cart inner join product on product.id=cart.product_id and cart.email=\'"+email+"\' and cart.status=\'bill\'";
  ResultSet rs3=st.executeQuery(q3);
  while(rs3.next()) {
	  sno=sno+1;
  %>
								<tr>
									<td>
										<%out.println(sno); %>
									</td>
									<td>
										<%=rs3.getString(17) %>
									</td>
									<td>
										<%=rs3.getString(18) %>
									</td>
									<td>
										<%=rs3.getString(19) %>
									</td>
									<td>
										<%=rs3.getString(3) %>
									</td>
									<td>
										<%=rs3.getString(4) %>
									</td>
								</tr>
								<tr>
									<%} %>
						</table>
						<h3 class="display-6">Total: <%out.println(total); %></h3>
						<a href="continueShopping.jsp">
							<button style="background-color:#865439;color: white;" class="btn button left-button">Continue Shopping</button>
						</a>
						<a onclick="window.print();">
							<button style="background-color:#865439;color: white;" class="btn button right-button">Print</button>
						</a>
						<br>
						<br>
						<br>
						<br>
						<%}
	catch(Exception e){
		System.out.println(e);
	}
%>
			</body>

			</html>