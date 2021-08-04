<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="homeHeader.jsp" %>
			<%@include file="footer.jsp" %>
				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<html>

				<head>
					<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
					<title>My Cart</title>
					<style>
					h3 {
						color: #402218;
						text-align: center;
					}
					</style>
				</head>

				<body>
					<div style="text-align: center; font-size: 50px; margin:20px;">Cart <i class="fas fa-shopping-basket" style="color: #402218;"></i></div>
					<%
	String msg=request.getParameter("msg");
	if("notPossible".equals(msg)){

%>
						<h3 class="display-4 alert">There is only one Quantity! So click on remove!</h3>
						<%} %>
							<%if("inc".equals(msg)) { %>
								<h3 class="display-4 alert">Quantity  Increased Successfully!</h3>
								<%} %>
									<%if("dec".equals(msg)){
%>
										<h3 class="display-4 alert">Quantity  Decreased Successfully!</h3>
										<%} %>
											<%if("removed".equals(msg)){
%>
												<h3 class="display-4 alert">Product Successfully Removed!</h3>
												<%} %>
													<table class="table table-striped table-hover">
														<thead>
															<%
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
		
%>
																<tr>
																	<th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"><%out.println(total);%></i> </th>
																	<%if(total>0) { %>
																		<th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th>
																		<%} %>
																</tr>
														</thead>
														<%
	}
        %>
															<thead>
																<tr>
																	<th scope="col">S.No</th>
																	<th scope="col">Product Name</th>
																	<th scope="col">Category</th>
																	<th scope="col"><i class="fa fa-inr"></i> Price</th>
																	<th scope="col">Quantity</th>
																	<th scope="col">Sub Total</th>
																	<th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
																</tr>
															</thead>
															<tbody>
																<%
      ResultSet rs1 =st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email=\'"+email+"\' and cart.address is NULL");
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
																			<td><i class="fa fa-inr"></i>
																				<%=rs1.getString(4) %>
																			</td>
																			<td>
																				<a href="incDecrQuantityAction.jsp?id=<%=rs1.getString(1)%>&quantity=inc" style="color:white;"> <i class='fas fa-plus-circle' style="color:white;"></i> &nbsp;&nbsp;
																					<%=rs1.getString(8) %>&nbsp; &nbsp; </a>
																				<a href="incDecrQuantityAction.jsp?id=<%=rs1.getString(1)%>&quantity=dec" style="color:white;"> <i class='fas fa-minus-circle' style="color:white;"></i> </a>
																			</td>
																			<td><i class="fa fa-inr" style="color:white;"></i>&nbsp;
																				<%=rs1.getString(9) %>
																			</td>
																			<td><a href="removeFromCart.jsp?id=<%=rs1.getString(1)%>" style="color:white;">	Remove&nbsp; <i class='fas fa-trash-alt' style="color:white;"></i></a></td>
																	</tr>
																	<%
      }
      }
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