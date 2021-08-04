<%@page errorPage="error.jsp" %>
	<!DOCTYPE html>
	<html>

	<head>
		<link rel="stylesheet" href="css/homeStyle.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> </head>
	<!--Header-->
	<br>
	<h2 class="title">Shoppy&nbsp;<i class="fas fa-tshirt"></i></h2>
	<%
         String email=session.getAttribute("email").toString();
         %>
		<nav class="navbar navbar-expand-lg" style="background-color:#053742;">
			<div class="container-fluid"> <a class="navbar-brand" href="home.jsp" style="color:#F8F5F1;"><i class="fas fa-user-circle"></i>&nbsp;<%out.println(email);%></a>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"> <a class="nav-link " aria-current="page" href="myCart.jsp">Cart <i class='fas fa-shopping-cart'></i></a> </li>
						<li class="nav-item"> <a class="nav-link " aria-current="page" href="myOrders.jsp">Orders <i class="fas fa-store"></i></a> </li>
						<li class="nav-item"> <a class="nav-link" href="sell.jsp">Sell <i class='fas fa-upload'></i></a> </li>
						<li class="nav-item dropdown"> <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Profile  <i class="fas fa-id-badge"></i>
          </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="messageUs.jsp">Contact &nbsp;<i class="fas fa-envelope-open-text"></i></a></li>
								<li><a class="dropdown-item" href="about.jsp">About &nbsp;<i class="fa fa-address-card"></i></a></li>
								<li><a class="dropdown-item" href="changeDetails.jsp">Settings &nbsp;<i class="fa fa-edit"></i></a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="logout.jsp">LogOut &nbsp;<i class="fas fa-sign-out-alt"></i></a></li>
							</ul>
						</li>
					</ul>
					<form class="d-flex" action="searchHome.jsp" method="post">
						<input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
						<button class="btn  shadow-none" type="submit"><i class="fa fa-search" style="color:white;"></i></button>
					</form>
				</div>
			</div>
		</nav>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
		<script src='https://kit.fontawesome.com/a076d05399.js'></script>