<%-- 
    Document   : materialListOrder
    Created on : 17-05-2018, 13:06:55
    Author     : Morten
--%>

<%@page import="FunctionLayer.LogicFacade"%>
<%@page import="FunctionLayer.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <h1>Her er en liste over alle materialer du skal bruge i din carport!</h1>
        <%
           int orderId = (int) session.getAttribute("OrderId");           
            Order o = LogicFacade.getOrder(orderId);
            for (int i = 0; i < LogicFacade.createList(o).size(); i++) {
                out.println(LogicFacade.createList(o).get(i) + "<br>");
            }
        %>
    </body>
</html>
