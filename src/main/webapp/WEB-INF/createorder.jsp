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
        <title>Find carport</title>
    </head>
    <body>
       <h1>Start din bestilling</h1>
        Indtast mål i cm(?)
        <br>
        <form action="FrontController" name="order" method="POST">
            <input type="hidden" name="command" value="createorder">
            <input type="number" name="length" placeholder="længde">
            <input type="number" name="width" placeholder="bredde">
            <input type="number" name="height" placeholder="højde">
            <textarea rows ="5" cols ="30" name="comment" placeholder="Skriv en kommentar" style="resize: none"></textarea>
            <input type="submit" value="Færdig">
            </form>
        <br>
    </body>
</html>