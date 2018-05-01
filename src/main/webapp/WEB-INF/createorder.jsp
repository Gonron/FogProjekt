<%-- 
    Document   : createorder
    Created on : 24-04-2018, 11:55:05
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Start your Order</h1>
        here is some filler text
        <br>
        <form action="FrontController" name="order" method="POST">
            <input type="hidden" name="command" value="createorder">
            <input type="number" name="length" placeholder="length">
            <input type="number" name="width" placeholder="width">
            <input type="number" name="height" placeholder="height">
            <textarea rows ="4" cols ="50" name="comment">Skriv en kommentar</textarea>
            <input type="submit" value="Submit">
            </form>
        <br>
    </body>
</html>