<%-- 
    Document   : allOrdersEmp
    Created on : 27-03-2018, 21:58:17
    Author     : Morten
--%>

<%@page import="FunctionLayer.LogicFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Orders</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <h1>Her er en liste over alle ordre</h1>
        <%for (int i = 0; i < LogicFacade.getOrders().size(); i++) {
                out.print(LogicFacade.getOrders().get(i)+"<br>");}%>
                <h2>For at markere en ordre som sendt, indtast ordrenummeret</h2>
        <form name="sent" action="FrontController" method="POST">
            <input type="hidden" name="command" value="EmpControl">
            <input type="number" name="id" required="" placeholder="Order id" required/>            
            <input type="submit" value="Mark as sent"/>           
         </form>
    </body>
</html>
