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
        Indtast mål i cm
        <br>
        <form action="FrontController?command=DynamicCarportSide" name="order" method="POST">
            <input type="hidden" name="command" value="createorder">
            <input type="number" name="length" placeholder="længde" min="150" max="800" required="">
            <br>
            <br>
            <input type="number" name="width" placeholder="bredde" min="200" max="800" required="">
            <br>
            <br>
            Carportens højde vil være 210 cm.
            <br>
            <br>
            <textarea rows ="5" cols ="30" name="comment" placeholder="Skriv en kommentar" style="resize: none"></textarea>
            <br>
            <br>
            <input type="submit" value="Se sidetegning">
        </form>
        <br>
        <form action="FrontController?command=DynamicCarport" name="order2" method="POST">
            <input type="submit" value="Se grundtegning"
        </form>
        <br>
    </body>
</html>