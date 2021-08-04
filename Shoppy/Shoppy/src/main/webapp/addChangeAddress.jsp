<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="settingsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
   <head>
      <link rel="stylesheet" href="css/changeDetails.css">
      <script src='https://kit.fontawesome.com/a076d05399.js'></script>
      <title>Add or change Address</title>
   </head>
   <body>
      <%
         String msg=request.getParameter("msg");
         if("valid".equals(msg)){
         %>
      <h3 class="display-4 alert">Address Successfully Updated !</h3>
      <%} %>
      <%
         if("invalid".equals(msg)){
         %>
      <h3 class="display-4 alert">Some thing Went Wrong! Try Again!</h3>
      <%} %>
      <%
         try{
         Connection con=ConnectionProvider.getCon();
         Statement st=con.createStatement();
         String q1="select * from users where email=\'"+email+"\'";
         ResultSet rs=st.executeQuery(q1);
         while(rs.next()){
         %>
      <form action="addChangeAddressAction.jsp" method="post">
         <h3 class="h4">Enter Address</h3>
         <input class="input-style" type="text" name="address" value="<%=rs.getString(7) %>" placeholder="Enter Address" required>
         <h3 class="h4">Enter city</h3>
         <input class="input-style" type="text" name="city" value="<%=rs.getString(8) %>" placeholder="Enter city" required>
         <h3 class="h4">Enter State</h3>
         <input class="input-style" type="text" name="state" value="<%=rs.getString(9) %>" placeholder="Enter state" required>
         <h3 class="h4">Enter country</h3>
         <input class="input-style" type="text" name="country" value="<%=rs.getString(10) %>" placeholder="Enter country" required>
         <button style="margin-top: 30px;"class="btn text-center button" type="submit">Save&nbsp;&nbsp;<i class="fas fa-save"></i></button>
      </form>
      <%	}
         }
         catch(Exception e) {
         System.out.println(e);
         }
          %>
   </body>
   <br><br><br>
</html>