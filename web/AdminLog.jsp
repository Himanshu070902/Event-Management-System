<%-- 
    Document   : venderLogin
    Created on : Jan 13, 2024, 10:53:24 AM
    Author     : ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
<style>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

.container {
  width: 80%;
  max-width: 600px;
  margin: 20px auto;
  font-family: Arial, sans-serif;
}

.button {
  display: inline-block;
  padding: 10px 20px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.button:hover {
  background-color: #0069d9;
}

.title {
  text-align: center;
  padding: 20px;
  font-size: 24px;
  font-weight: bold;
  color: white;
  background-color: #007bff;
  border-radius: 10px;
}

.form {
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 10px;
}

.form-group {
  margin-bottom: 10px;
}

.form-label {
  display: block;
  font-weight: bold;
}

.form-input {
  display: block;
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.form-select {
  display: block;
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='4' height='5' viewBox='0 0 4 5'%3E%3Cpath fill='%23333' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E");
  background-repeat: no-repeat;
  background-position: right 10px center;
}

.form-actions {
  display: flex;
  justify-content: flex-end;
}

.form-actions button {
  margin-left: 10px;
}
</style>
</head>
<body>
    <%String myname=(String) session .getAttribute("name_key"); 
    %>
    
    <form action="AdminServlet" method="post">
<div class="container">
  <div class="buttons">
   
    <button class="button">BACK</button>
  </div>
  <div class="title">Event Management System</div>
  <form1 class="form">
    <div class="form-group">
      <label class="form-label" for="user-id">User Id</label>
      <input class="form-input" type="text" id="user-id" name="user-id" placeholder="Enter your user id">
    </div>
    <div class="form-group">
      <label class="form-label" for="password">Password</label>
      <input class="form-input" type="password" id="password" name="password" placeholder="Enter your password">
    </div>
  
    <div class="form-actions">
        
      <button class="button" type="reset">Cancel</button>
      <button class="button" type="submit">Login</button>
    </div>
  </form1>
</div>
</body>
</html>
