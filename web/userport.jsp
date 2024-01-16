<%-- 
    Document   : userport
    Created on : Jan 15, 2024, 12:33:19 AM
    Author     : ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <style>.header {
                background-color: lightblue;
                padding: 20px;
                text-align: center;
            }

            .buttons {
                display: flex;
                justify-content: space-around;
                margin: 15px;
            }

            button {

                background-color:white;
                color: white;
                border: none;
                border-radius: 10px;
                padding: 10px 20px;
            }


        </style>
    </head>
    <body>
      
        
        <div class="header"> 
            <%  String myname=(String) session.getAttribute("name_key"); %>
            <h1>WELCOME:<%= myname %></h1>
        </div>
        <div class="buttons">
            <button class="active">  <a href="venderpage.jsp"  style="text-decoration: none ">vender</a> </button>
            <button> <a href="cart.jsp " style="text-decoration: none"> Cart</a> </button>
            <button> <a href="productstatus.html "  style="text-decoration: none">Guest List</a>  </button>

            <button> <a href="productstatus.jsp"   style="text-decoration: none">Order Status</a>  </button>

        </div>

    </body>
</html>