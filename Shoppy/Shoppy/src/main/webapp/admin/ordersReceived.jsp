<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeaderModified.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <link rel="stylesheet" href="../css/ordersReceived-style.css">
      <title>Orders</title>
      <style>
         .th-style
         { 
         width: 25%;
         }
      </style>
   </head>
   <body>
      <div style="text-align: center; font-size: 50px; margin:20px;">Orders Placed <i class="fas fa-archive"></i></div>
      <%
         String msg=request.getParameter("msg");
         if("cancel".equals(msg)){
         %>
      <h3 style="color:black;" class="display-4 alert">Order Cancelled Successfully..</h3>
      <%} %>
      <%
         if("delivered".equals(msg)){
         %>
      <h3 style="color:black;" class="display-4 alert">Delivering soon.. </h3>
      <%} %>
      <%
         if("invalid".equals(msg)){
         %>
      <h3 style="color:black;" class="display-4 alert">Some thing went wrong.. please try again</h3>
      <%} %>
      <table id="customers">
         <tr>
            <th>Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th scope="col">Order Date</th>
            <th scope="col">Expected Delivery Date</th>
            <th scope="col">Payment Method</th>
            <th scope="col">T-ID</th>
            <th scope="col">Status</th>
            <th scope="col">Cancel order <i class='fas fa-window-close'></i></th>
            <th scope="col">Order Delivered <i class='fas fa-dolly'></i></th>
         </tr>
         <%
            int sno=0;
            try{
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	String q1="select * from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status=\'processing\'";
            	ResultSet rs=st.executeQuery(q1);
            	while(rs.next()){
            		sno=sno+1;
            
            %>
         <tr>
            <td><%=rs.getString(8) %></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %>  </td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %></td>
            <td><%=rs.getString(9) %></td>
            <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(11) %></td>
            <td><%=rs.getString(12) %></td>
            <td><%=rs.getString(13) %></td>
            <td><a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel <i class='fas fa-window-close'></i></a></td>
            <td><a href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Deliver <i class='fas fa-dolly'></i></i></a></td>
         </tr>
         <%
            }
            }
            catch(Exception e) {
            	System.out.println(e);
            	
            }
            %>
      </table>
      <br>
      <br>
      <br>
   </body>
</html>