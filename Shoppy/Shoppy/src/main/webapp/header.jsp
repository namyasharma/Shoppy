<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" href="css/homeStyle.css">
      <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   </head>
   <!--Header-->
   <br>
   <h2 class="title">Oluber</h2>
   <div class="topnav sticky">
      <%
         String email=session.getAttribute("email").toString();
         %>
      <h2><a href="home.jsp"> <%out.println(email);%><i class='fas fa-user-alt'></i></a></h2>
      <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
      <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
      <a href="myOrders.jsp">My Orders  <i class='fab fa-elementor'></i></a>
      <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
      <a href="messageUs.jsp">Message Us <i class='fas fa-comment-alt'></i></a>
      <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
      <a href="sell.jsp">Sell <i class='fas fa-upload'></i></a>
      <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
   </div>
   <div class="search-container">
      <form action="searchHome.jsp" method="post">
         <input type="text" placeholder="Search" name="search">
         <button type="submit"class="btn btn-primary">     <i class="fa fa-search"></i></button>
      </form>
   </div>
   <br>
   <!--table-->