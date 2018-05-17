<%-- 
    Document   : allOrdersCust
    Created on : 02-05-2018, 13:36:24
    Author     : morten
--%>

<%@page import="FunctionLayer.User"%>
<%@page import="FunctionLayer.LogicFacade"%>
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
        <h1>Her er en liste over alle dine ordre!</h1>
         <%   User u = (User) session.getAttribute("user");           
            for (int i = 0; i < LogicFacade.getOrders(u).size(); i++) {
                out.print(LogicFacade.getOrders(u).get(i)+"<br>");
            }
        %>
           <h2>For at se en stykliste over materialer i en ordre, indtast ordrenummeret</h2>
        <form name="materialListOrder" action="FrontController" method="POST">
            <input type="hidden" name="command" value="materialListOrder">
            <input type="number" name="id" required="" placeholder="Order id" required/>            
            <input type="submit" value="List of materials"/>           
         </form>   
    </body>
</html>
