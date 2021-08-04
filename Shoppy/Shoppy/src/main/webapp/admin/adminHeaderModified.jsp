<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   errorPage="error.jsp" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" href="adminStyle.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   </head>
   <!--Header-->
   <br>
   <h2 class="title">Shoppy&nbsp;<i class="fas fa-truck-monster"></i></h2>
   <%
      String email=session.getAttribute("email").toString();
      %>
   <nav class="navbar navbar-expand-lg"style="background-color:#053742;">
      <div class="container-fluid">
         <a class="navbar-brand" href="adminHome.jsp" style="color:#F8F5F1;"><i class="fas fa-user-circle"></i>&nbsp;Admin</a>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Product Settings
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <li><a style="color:black;" class="nav-link " aria-current="page" href="addNewProduct.jsp">Add new products &nbsp;<i class='fas fa-plus-square'></i></a></li>
                     <li><a style="color:black;" class="nav-link " aria-current="page" href="allProductEditProduct.jsp">View & edit products &nbsp;<i class="far fa-edit"></i></a></li>
                  </ul>
               </li>
               <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Order Settings
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                     <li><a style="color:black;" class="nav-link" aria-current="page" href="ordersReceived.jsp">Received orders&nbsp;<i class="far fa-folder-open"></i></a></li>
                     <li> <a style="color:black;" class="nav-link" aria-current="page" href="cancelOrders.jsp">Cancelled orders &nbsp;<i class='fas fa-window-close'></i></a></li>
                     <li><a style="color:black;" class="nav-link" aria-current="page" href="deliveredOrders.jsp">Delivered Orders &nbsp;<i class="fas fa-dolly"></i></a></li>
                  </ul>
               </li>
               <li class="nav-item">
                  <a class="nav-link " aria-current="page" href="messagesReceived.jsp">Received messages &nbsp;<i class="fas fa-comments"></i></a>
               </li>
               <li class="nav-item mx-auto">
                  <a class="nav-link" aria-current="page" href="../logout.jsp">Log Out <i class="fas fa-power-off"></i></a>
               </li>
            </ul>
         </div>
      </div>
   </nav>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
   <script src='https://kit.fontawesome.com/a076d05399.js'></script>