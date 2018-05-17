<%-- 
    Document   : materialListOrder
    Created on : 17-05-2018, 13:06:55
    Author     : Morten
--%>

<%@page import="FunctionLayer.LogicFacade"%>
<%@page import="FunctionLayer.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Her er en liste over alle materialer du skal bruge i din carport!</h1>
        <% 
             Order o= new Order(5000, 5000, 8000, false, false, false);
             for (int i = 0; i <LogicFacade.createList(o).size(); i++) {
                     out.println(LogicFacade.createList(o).get(i)+"<br>");
                 }             
         %>
    </body>
</html>
