<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" href="css/homeStyle.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
   <!--Header-->
   <br>
   <h2 class="title">Oluber Settings &nbsp;<i class="fas fa-cogs"></i></h2>
 
      <%
         String email=session.getAttribute("email").toString();
         %>
        <nav class="navbar navbar-expand-lg" style="background-color:#053742;">
  <div class="container-fluid">
    <a class="navbar-brand" href="home.jsp" style="color:#F8F5F1;"><i class="fas fa-user-circle"></i>&nbsp;<%out.println(email);%></a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link " aria-current="page" href="changePassword.jsp">Change Password <i class='fas fa-unlock-alt'></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link " aria-current="page"href="addChangeAddress.jsp">&nbsp;Add / Change Address <i class='fas fa-map-marker-alt'></i></a>
        </li>
     

         <li class="nav-item">
          <a class="nav-link" href="changeSecurityQuestion.jsp">&nbsp;Change Security Question <i class="fa fa-question"></i></a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="changeMobileNumber.jsp">&nbsp;Change Mobile Number <i class='fas fa-mobile-alt'></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="home.jsp">&nbsp;Go Back <i class='fas fa-undo'></i></a>
        </li>
      
</ul>

    </div>
  </div>
</nav>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
      <script src='https://kit.fontawesome.com/a076d05399.js'></script>