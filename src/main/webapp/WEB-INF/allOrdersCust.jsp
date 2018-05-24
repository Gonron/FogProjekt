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
        <style>
            table, td, th {
                background: white;
                border: 1px solid black;
                padding-left:  5px;
                padding-right:  5px;
            }

            table {
                border-collapse: collapse;
                width: 54%;
            }

            td {
                vertical-align: bottom;
            }
        </style>
    </head>
    <body>
        <h1>Her er en liste over alle dine ordre!</h1>
        <table>
            <tr>
                <th> Ordernummer </th>
                <th> Længde </th>
                <th> Brede </th>
                <th> Status </th>
                <th> Skur </th>
            </tr>
            <tr>
                <td><b>  </b></td>
                <td><b> Meter </b></td>
                <td><b> Meter </b></td>
                <td><b>  </b></td>
                <td><b>  </b></td>
            </tr>
            <%   User u = (User) session.getAttribute("user");
                for (int i = 0; i < LogicFacade.getOrders(u).size(); i++) {
            %>

            <tr>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getId());%></td>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getLength());%></td>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getWidth());%></td>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getStatus());%></td>
                <td>><%out.print(LogicFacade.getOrders(u).get(i).getShed());%></td>
            </tr>
            <%              }
            %>
        </table>

        <h2>For at se en stykliste over materialer i en ordre, indtast ordrenummeret</h2>
        <form name="materialListOrder" action="FrontController" method="POST">
            <input type="hidden" name="command" value="materialListOrder">
            <input type="number" name="id" required="" placeholder="Order id" required/>            
            <input type="submit" value="List of materials"/>           
        </form>   

    </body>
</html>
