<%-- 
    Document   : product.jsp
    Created on : Jan 15, 2024, 4:10:53 PM
    Author     : ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color: lightgrey;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}
.topnav h1{float: left;
  color: white;
  text-align: right;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  border: none;
    
}

.topnav button {
  float: left;
  color: rgb(43, 7, 106);
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  border: none;
}

.topnav button:hover {
  background-color: #ddd;
  color: black;
}

.products {
  margin: 20px;
  padding: 10px;
  background-color: blue;
  color: white;
  font-size: 20px;
  text-align: center;
}

.product {
  float: left;
  width: 20%;
  padding: 10px;
  margin: 10px;
  background-color: lightblue;
  border-radius: 10px;
}

.product-img-top { float: left;
  width: 50%;
  padding: 10px;
  margin: 10px;
  background-color: lightblue;
  border-radius: 10px;

}


.product p {
  font-size: 20px;
}

.product button {
  background-color: green;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.product button:hover {
  background-color: darkgreen;
}
</style>

 
</head>
<body>
    
    
  <%  String myname=(String) session.getAttribute("name_key"); %>
        
<div class="topnav">
    <button><a href="index.html" style="text-decoration:none" >Home</a></button>
   
    <button><a href="Userlogin.html" style="text-decoration:none" >LogOut</a></button>
  <h1>WELCOME:<%= myname %></h1>
</div>




<form action="cart.jsp" method="post"></form>
<div class="product">
    <img   class="product-img-top" src="images/shoes.jpg" alt="image"  id="image" >
  <br><p id="name">Shoes</p>
    <br><p   id="price">199</p>
  <button type="submit" >Add to Cart</button>
  
</div>
<!--
<div class="product">
<img   class="product-img-top" src="images/shoes2.jpg" alt="image" name="image2"  id="image2">
  <br><p  name="name"  id="name">Shoes</p>
    <br><p  name="price" id=" price">Price: RS/249</p>
  <button id="2" >Add to Cart</button>
</div>

<div class="product">
 <img   class="product-img-top" src="images/shoes3.jpg" alt="image"   name="image3" id="image3">
  <br><p name="price" id="price">Shoes</p>
    <p id="price">Price: RS/299</p>
  <button  id="3"  >Add to Cart</button>
</div>

<div class="product">
 <img   class="product-img-top" src="images/shoes2.jpg" alt="image"  name="image4" id="image4">
  <br><p id="name" name="name">Shoes</p>
    <p  name="price" id="price">Price: RS/199</p>
    <button id="4">Add to Cart</button>-->
<!--</div>-->
</form>

</body>
</html>
