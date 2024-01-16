<%-- 
    Document   : venderpage
    Created on : Jan 13, 2024, 11:08:26 AM
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
                background-color: #f0f0f0;
            }

            .navbar {
                display: flex;
                align-items: center;
                background-color: #007bff;
                color: white;
                padding: 10px;
            }

            .navbar a {
                color: white;
                text-decoration: none;
                margin: 10px;
            }

            .navbar a:hover {
                color: #f0f0f0;
            }

            .navbar a.active {
                font-weight: bold;
                background-color: #005cbf;
                padding: 5px 10px;
                border-radius: 5px;
            }

            .vendor {
                display: inline-block;
                width: 45%;
                margin: 2.5%;
                padding: 20px;
                border: 2px solid #90b01c;
                background-color: #007bff;
                color: white;
                font-size: 20px;
            }

            .vendor a {
                display: block;
                color: rgb(45, 25, 25);
                text-decoration: none;
                margin: 10px;
            }

            .vendor a:hover {
                color: #f0f0f0;
            }
        </style>
    </head>
    <body>

        <div class="navbar">
            <a href="venderLogin.jsp" class="active">Home</a>
            <a href="vender.html">Vendor</a>
            <a href="#">Florist</a>
            <a href="venderLogin.jsp">LogOut</a>
        </div>

        <div class="vendor">
            <h3>Vender 1</h3>
            <a href="#">Contact Details</a>
            <button><a href="#">Shop Item</a>
        </div>

        <div class="vendor">
            <h3>Vender 2</h3>
            <a href="#">Contact Details</a>
            <button><a href="#">Shop Item</a></button> 
        </div>

        <div class="vendor">
            <h3>Vender 3</h3>
            <a href="#">Contact Details</a>
            <button><a href="#">Shop Item</a></button>

        </div>

        <div class="vendor">
            <h3>Vender 4</h3>
            <a href="#">Contact Details</a>
            <button>  <a href="#">Shop Item</a></button>

        </div>


    </body>
</html>
