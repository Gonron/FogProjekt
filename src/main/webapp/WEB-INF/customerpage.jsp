<%-- 
    Document   : customerpage
    Created on : Aug 22, 2017, 2:33:37 PM
    Author     : kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer home page</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <h1>Hello <%=request.getParameter( "email" )%> </h1>
        You are now logged in as a customer of our wonderful site.
        <br>
        <a href="FrontController?command=createorder">Start din Ordre<a/>
            <br>
        <a href="FrontController?command=allOrdersCust">Se dine Ordre<a/>
            <br>
        <a href="FrontController?command=contact">Kontakt Os<a/>
            <br>
    </body>
</html>
