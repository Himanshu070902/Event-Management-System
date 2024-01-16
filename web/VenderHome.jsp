<%-- 
    Document   : VenderHome
    Created on : Jan 15, 2024, 1:00:37 AM
    Author     : ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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

            .header {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 10px;
                background-color: #f0f0f0;
            }

            .header-text {
                font-size: 18px;
                font-weight: bold;
                color: #333;
            }

            .button {
                display: inline-block;
                padding: 10px 20px;
                background-color: white;
                color: #333;
                border: 1px solid #ccc;
                border-radius: 10px;
                cursor: pointer;
            }

            .button:hover {
                background-color: #f0f0f0;
            }

            .buttons {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-gap: 10px;
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <div class="header-text">Welcome</div>
                <%  String myname=(String) session.getAttribute("name_key"); %>
            <h1>WELCOME:<%= myname %></h1>
                
                <div class="header-text">Vendor</div>
            </div>
            <div class="buttons">
                <button class="button"> <a href="additem.html">Your Item</a></button>
                <button class="button" >
                    <a href="additem.html">Add New Item</a></button>
                <button class="button">   <a href="Transection.html">Transaction</a></button>
                <button class="button"><a href="index.html">LogOut</a></button>
            </div>
        </div>
    </body>
</html>

