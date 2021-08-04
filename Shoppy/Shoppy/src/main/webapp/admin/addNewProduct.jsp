<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeaderModified.jsp" %>
<%@include file="../footer.jsp" %>
<html>
   <head>
      <link rel="stylesheet" href="../css/addNewProduct-style.css">
      <title>Add New Product</title>
   </head>
   <body>
      <%
         String msg=request.getParameter("msg");
         if("done".equals(msg)) {
         %>
      <h3 style="color:black;" class="display-4 alert">Product Added Successfully!</h3>
      <%} %>
      <%if("wrong".equals(msg)) { %>
      <h3 style="color:black;" class="display-4 alert">Something went wrong! Try Again!</h3>
      <%} %>
      <%
         int id=1;
         try {
         	Connection con=ConnectionProvider.getCon();
         	Statement st=con.createStatement();
         	ResultSet rs=st.executeQuery("select max(id) from product");
         	while(rs.next()) {
         		id=rs.getInt(1);
         		id=id+1;
         	}
         }
         catch(Exception e) {
         	System.out.println(e);
         }
         %>
      <form action="addNewProductAction.jsp" method="post">
         <div style="text-align: center; font-size: 50px; margin:20px; ">Product Id&nbsp;<i class="fas fa-angle-double-right"style="color: #402218;"></i><%out.println(id); %>&nbsp;<i class="fas fa-truck" style="color: #402218;"></i></div>
         <input type="hidden" name="id" value="<%out.println(id); %>">
         <div class="left-div">
            <h3 class="h3">Enter Name</h3>
            <input class="input-style" type="text" name="name" placeholder="Enter name" required >
            <hr>
         </div>
         <div class="right-div">
            <h3 class="h3">Enter Category</h3>
            <input class="input-style" type="text" name="category" placeholder="Enter category" required >
            <hr>
         </div>
         <div class="left-div">
            <h3 class="h3">Enter Price</h3>
            <input class="input-style" type="number" name="price" placeholder="Enter price" required >
            <hr>
         </div>
         <div class="right-div">
            <h3 class="h3">Active</h3>
            <select class="input-style" name="active">
               <option value="Yes"> Yes</option>
               <option value="No"> No</option>
            </select>
            <hr>
         </div>
         <div class="align-self-center mx-auto">
            <button class="btn text-center button" type="submit">Sell &nbsp; &nbsp; &nbsp;<i class='far fa-share-square'></i></button>
         </div>
      </form>
   </body>
   <br><br><br>
   </body>
</html>