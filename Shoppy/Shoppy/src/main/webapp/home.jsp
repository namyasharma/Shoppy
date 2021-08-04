<%@page import="project.ConnectionProvider" %>
	<%@page import="java.sql.*" %>
		<%@include file="homeHeader.jsp" %>
			<%@include file="footer.jsp" %>
				<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
				<html>

				<head>
					<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
					<title>Home</title>
					<style>
					h3 {
						color: #402218;
						text-align: center;
					}
					</style>
				</head>

				<body>
					<div style="text-align: center; font-size: 50px; margin:20px;"><i class="fas fa-hat-wizard" style="color: #402218;"></i></div>
					<%
	String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
						<h3 class="display-2 alert">Product added successfully!</h3>
						<%} %>
							<%
	if("exist".equals(msg)) 
	{
%>
								<h3 class="display-2 alert">Product already exist in you cart! Quantity  increased!</h3>
								<%} %>
									<%if("invalid".equals(msg)) 
	{
	%>
										<h3 class="display-2 alert">Something went wrong! Try again later</h3>
										<%} %>
											<table class="table table-striped table-hover">
												<thead>
													<tr>
														<th scope="col">ID</th>
														<th scope="col">Name</th>
														<th scope="col">Category</th>
														<th scope="col"><i class="fa fa-inr"></i> Price</th>
														<th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
													</tr>
												</thead>
												<tbody>
													<%
			try {
				Connection con=ConnectionProvider.getCon();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select * from product where active=\'Yes\'");
				while(rs.next()) {

		%>
														<tr>
															<td>
																<%=rs.getString(1) %>
															</td>
															<td>
																<%=rs.getString(2) %>
															</td>
															<td>
																<%=rs.getString(3) %>
															</td>
															<td><i class="fa fa-inr"></i>
																<%=rs.getString(4) %>
															</td>
															<td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>" style="color:#DDDDDD;">Add to cart <i class='fas fa-cart-plus'></i></a></td>
														</tr>
														<% 			
				}
			}
		catch(Exception e) {
			System.out.println(e);
		}
		%>
												</tbody>
											</table>
											<br>
											<br>
											<br> </body>

				</html>