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
        <title>Find carport</title>
    </head>
    <body>
       <h1>Start din ordre</h1><br>
        Indtast størrelserne i cm.
        <br>
        Alle carporte har en højde på 210cm.
        <br>
        <form name="order" action="FrontController" method="POST">            
            <input type="hidden" name="command" value="order">
            <input type="number" name="length" placeholder="length" min="250" max="800" required>
            <input type="number" name="width" placeholder="width" min="400" max="1000" required> 
            <select name="shed">  
            <option value="medskur" name="wShed" >Med skur</option>
            <option value="udenskur" name="noShed" >Uden skur</option>            
            </select>             
            <input type="submit" value="Submit">
            </form>
        <br>
    </body>
</html>