<%-- 
    Document   : Maintain User
    Created on : Jan 14, 2024, 11:12:26 PM
    Author     : ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Web App Interface</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
            }
            .button {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 8px;
            }
            .column {
                float: left;
                width: 33.33%;
                padding: 5px;
            }
            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }
        </style>
    </head>
    <body>
        <div class="row">
            <div class="column">
                <button class="button">Home</button><br>  <br>
                <button class="button">Membership</button><br>
                <br><br>  <br>
                <br>
                <br>
                <button class="button">User Management</button>
            </div>
            <br>  <br>
            <br>
            <br>
            <div class="column">
                <button class="button">Add</button>
                <br>

                <button class="button">Update</button>  <br>    <br>
                <button class="button">Add</button>  <br>

                <button class="button">Update</button>
            </div>
            <div class="column">
                <button class="button">LogOut</button>
            </div>
        </div>
    </body>
</html>


