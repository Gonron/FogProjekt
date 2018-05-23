<%-- 
    Document   : receipt
    Created on : 03-05-2018, 12:56:38
    Author     : User
--%>

<%@page import="FunctionLayer.Order"%>
<%@page import="FunctionLayer.LogicFacade"%>
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
        <h1>Kvittering</h1>
         Din ordre er blevet modtaget.<br>        
        <a href="FrontController?command=allOrdersCust"> Vis alle dine ordre </a><br>
        <a href="FrontController?command=contact"> Kontakt os </a><br>
        <a href="FrontController?command=DynamicCarport"> Se carport </a>
       </body>
</html>
