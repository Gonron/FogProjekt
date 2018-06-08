<%-- 
    Document   : showUser
    Created on : 04-06-2018, 16:57:30
    Author     : morten
--%>

<%@page import="FunctionLayer.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vis Bruger</title>
    </head>
    <body>
        <%@include file ="header.jsp" %>
        <%@include file="isValidUser.jsp" %>
        
        <h1>Her kan du se informationer om en bruger</h1>
        <%  User u2 = (User) session.getAttribute("cust");%>
        <% out.print("<b>"+"Kunde id: "+"</b>" + u2.getId() + "<br>");
            out.print("<b>"+"Email: "+"</b>" + u2.getEmail() + "<br>");
            out.print("<b>"+"Telefon: "+"</b>" + u2.getPhonenumber() + "<br>");
            out.print("<b>"+"Adresse: " +"</b>"+ u2.getAddress() + "<br>");
            out.print("<b>"+"Postnr.: "+"</b>" + u2.getPostalCode() + "<br>");%>
            <%@include file ="footer.jsp" %>
    </body>
</html>
