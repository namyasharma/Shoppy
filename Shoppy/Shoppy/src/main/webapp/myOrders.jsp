<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="homeHeader.jsp" %>
			<%@include file="footer.jsp" %>
				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<html>

				<head>
					<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
					<title>Orders</title>
				</head>

				<body>
					<div style="text-align: center; font-size: 50px; margin:20px; ">Purchases&nbsp;<i class="fas fa-shopping-bag" style="color: #402218;"></i></div>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th scope="col">S.No</th>
								<th scope="col">Product Name</th>
								<th scope="col">category</th>
								<th scope="col"><i class="fa fa-inr"></i> Price</th>
								<th scope="col">Quantity</th>
								<th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
								<th scope="col">Order Date</th>
								<th scope="col">Expected Delivery Date</th>
								<th scope="col">Payment Method</th>
								<th scope="col">Status</th>
							</tr>
						</thead>
						<tbody>
							<%
int sno=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="select * from cart inner join product where cart.product_id=product.id and cart.email=\'"+email+"\' and cart.orderDate is not NULL";
	ResultSet rs=st.executeQuery(q1);
	while(rs.next()){
		sno=sno+1;
%>
								<tr>
									<td>
										<%out.println(sno); %>
									</td>
									<td>
										<%=rs.getString(17) %>
									</td>
									<td>
										<%=rs.getString(18) %>
									</td>
									<td><i class="fa fa-inr"></i>
										<%=rs.getString(19) %>
									</td>
									<td>
										<%=rs.getString(3) %>
									</td>
									<td><i class="fa fa-inr"></i>
										<%=rs.getString(4) %>
									</td>
									<td>
										<%=rs.getString(9) %>
									</td>
									<td>
										<%=rs.getString(10) %>
									</td>
									<td>
										<%=rs.getString(11) %>
									</td>
									<td>
										<%=rs.getString(13) %>
									</td>
								</tr>
								<%}}
catch(Exception e){
System.out.println(e);
}
%>
						</tbody>
					</table>
					<br>
					<br>
					<br> </body>

				</html>