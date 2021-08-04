<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
   try {
   	Connection con=ConnectionProvider.getCon();
   	Statement st=con.createStatement();
   	String usersQuery="create table users(name varchar(100), email varchar(100) primary key, mobilenumber bigInt, securityQuestion varchar(200), answer varchar(200),password varchar(100),address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
   	String productsQuery="create table product(id int, name varchar(500), category varchar(200), price int, active varchar(10))";
   	String cartQuery="create table cart(email varchar(100), product_id int, quantity int, total int, address varchar(100), state varchar(100), country varchar(100), mobileNumber bigInt, orderDate varchar(100), deliveryDate varchar(100) ,paymentMethod varchar(100), transactionId varchar(100),status varchar(10))";
   	String contactQuery="create table message(id int AUTO_INCREMENT, email varchar(100), subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
   	st.execute(contactQuery);
   	System.out.println(usersQuery);
   	//st.execute(usersQuery);
   	System.out.println(productsQuery);
   	System.out.println(cartQuery);
   	System.out.println(contactQuery);
   	//st.execute(productsQuery);
   	//st.execute(cartQuery);
   	System.out.println("Table created");
   	st.close();
   	con.close();
   }
   catch(Exception e) {
   	System.out.print(e);
   }
   %>