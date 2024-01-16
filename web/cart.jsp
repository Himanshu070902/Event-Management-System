<%-- 
    Document   : cart
    Created on : Jan 15, 2024, 12:55:45 AM
    Author     : ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shopping Cart</title>
<style>
  .cart-container {
    width: 80%;
    margin: auto;
    background-color: #f4f4f4;
    padding: 20px;
  }
  .cart-header, .cart-item, .cart-total {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 70px;
    background-color: #e0e0e0;
  }
  .cart-item {
    background-color: #ffffff;
  }
  .cart-item img {
    width: 50px; /* Placeholder for product image */
  }
  .cart-item button {
    background-color: #ff0000;
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
  }
  .checkout-btn {
    background-color: #008000;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    text-align: center;
    margin-top: 20px;
  }
</style>

<!--<script>
    function showPrice() 
{
 
    var qt = document.getElementById("qty");
              var shPri = document.getElementById("showprice");
              shPri.innerHTML = "Rs. "+((qt.value)*(100));
   
}
          
          </script>-->
</head>

<body>
    
    <jsp:declaration>
    String name="";
    String price="";
    String image="";
    </jsp:declaration>
    
    <jsp:scriptlet>
        name=request.getParameter("name");
        price=request.getParameter("price");
        image= request.getParameter("image");   
    </jsp:scriptlet>
  
<div class="cart-container">
    <%  String myname=(String) session.getAttribute("name_key"); %>
            <h1>WELCOME:<%= myname %></h1>
  <!-- Cart Header -->
  <div class="cart-header">
    <div>Image</div>
    <div>Name</div>
    <div>Price</div>
    <div>Quantity</div>
    <div>Total Price</div>
    <div>Action</div>
  </div>
  
  <!-- Cart Item -->
  <div class="cart-item">
      
    <img src="images/shoes.jpg" alt="Product Image"  >
   <strong><jsp:expression> 
           name
    </jsp:expression>
    <jsp:expression> 
           price
    </jsp:expression></strong>
    <div>
      <div class="quntity">
          <input type="number" id="qty"    name="qty" onchange="showPrice()" >
        <!-- Add more options as needed -->
      </div>
    </div>
    <div  id="showprice" onchange="showPrice()">  <p  >Rs/-</p> </div>
    <button type="reset">Remove</button>
  </div>
  
  <!-- Cart Total -->
  <div class="cart-total">
    <div>Grand Total</div>
<div > Rs/- </div>
  </div>
  
  <!-- Checkout Button -->
  <button class="checkout-btn">  <a href="checkout.html"> Proceed to CheckOut</a></button>
</div>

</body>
</html>
