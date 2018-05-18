<%-- 
    Document   : createorder
    Created on : 24-04-2018, 11:55:05
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Start din ordre</h1><br>
        Indtast størrelserne i cm.
        <br>
        Alle carporte har en højde på 210cm.
        <br>
        <form name="order" action="FrontController" method="POST">            
            <input type="hidden" name="command" value="order">
<<<<<<< HEAD
            <input type="number" name="length" placeholder="length">
            <input type="number" name="width" placeholder="width">
            <input type="number" name="height" placeholder="height">
            <select>
            <option name="medskur">Med skur</option>
            <option name="udenskur">Uden skur</option>
            </select>
            <textarea rows ="2" cols ="30" name="comment" placeholder="Skriv en kommentar" style="resize: none"></textarea>           
=======
            <input type="number" name="length" placeholder="length" min="250" max="800" required>
            <input type="number" name="width" placeholder="width" min="150" max="800" required> 
            <select name="shed">
                <option value="medskur">Med skur</option>
                <option value="udenskur">Uden skur</option>            
            </select>   
            <textarea rows ="1" cols ="30" name="comment" placeholder="Skriv en kommentar" style="resize: none"></textarea> 
>>>>>>> 4101501ca5b3cf5ff0c86ff3ac4ad0bb88ec2c7c
            <input type="submit" value="Submit">
        </form>
        <br>
    </body>
</html>