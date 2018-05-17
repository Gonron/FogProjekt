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
       <h1>Start din ordre</h1>
        
        <br>
        <form name="order" action="FrontController" method="POST">            
            <input type="hidden" name="command" value="order">
            <input type="number" name="length" placeholder="length">
            <input type="number" name="width" placeholder="width">
            <input type="number" name="height" placeholder="height">
            <select>
            <option name ="medtag" >Med tag</option>
            <option value="udentag">Uden tag</option>
            </select>
            <select>
            <option value="medskur">Med skur</option>
            <option value="udenskur">Uden skur</option>
            </select>
            <textarea rows ="2" cols ="30" name="comment" placeholder="Skriv en kommentar" style="resize: none"></textarea>           
            <input type="submit" value="Submit">
            </form>
        <br>
    </body>
</html>