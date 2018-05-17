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
            <input type="number" name="length" placeholder="længde" min="150" max="1000" required="">
            <input type="number" name="width" placeholder="bredde" min="200" max="1000" required="">
            <input type="number" name="height" placeholder="højde" min="180" max="1000" required="">
            <textarea rows ="5" cols ="30" name="comment" placeholder="Skriv en kommentar" style="resize: none"></textarea>
            <input type="submit" value="Færdig">
            <a href="FrontController?command=DynamicCarport" class="button">Carport</a>
            <a href="FrontController?command=DynamicCarportSide" class="button">Set fra siden</a>
        </form>
        <br>
    </body>
</html>