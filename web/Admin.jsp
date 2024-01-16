<%-- 
    Document   : Admin
    Created on : Jan 14, 2024, 11:09:16 PM
    Author     : ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 20px;
  }
  .navbar, .welcome, .buttons {
    text-align: center;
    margin-bottom: 10px;
  }
  .navbar button, .buttons button {
    border: none;
    padding: 10px 20px;
    margin: 5px;
    border-radius: 5px;
    cursor: pointer;
  }
  .navbar button {
    border: 1px solid #333;
  }
  .welcome {
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    border-radius: 5px;
  }
  .buttons button {
    background-color: #4CAF50;
    color: white;
  }
</style>
</head>
<body>
<div class="navbar">
    <button>   <a href="index.html" style="text-decoration: none ">Home</a></button>
    <button> <a href="AdminLog.jsp" style="text-decoration: none "> LogOut</a></button>
</div>
<div class="welcome">
 <%  String myname=(String) session.getAttribute("name_key"); %>
            <h2>WELCOME:<%= myname %></h2>
</div>
<div class="buttons">
  <button>     <a href="Maintain User.jsp" style="text-decoration: none ">Maintain User</button>
  <button>     <a href="Maintain Vender.jsp" style="text-decoration: none ">Maintain Vendor</button>
</div>
</body>
</html>

