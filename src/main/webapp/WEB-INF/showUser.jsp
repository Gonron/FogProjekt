<%-- 
    Document   : showUser
    Created on : 04-06-2018, 16:57:30
    Author     : morten
--%>

<%@page import="FunctionLayer.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vis Bruger</title>
    </head>
    <body>
        <h1>Her kan du se information om en bruger</h1>
        <%  User u = (User) session.getAttribute("cust");%>
        <% out.print("Kunde id:" + u.getId() + "<br>");
            out.print("Email:" + u.getEmail() + "<br>");
            out.print("Telefon:" + u.getPhonenumber() + "<br>");
            out.print("Adresse:" + u.getAddress() + "<br>");
            out.print("Postnr.:" + u.getPostalCode() + "<br>");%>
    </body>
</html>
