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
        <h1>Her er en liste over alle materialer du skal bruge i din carport!</h1>
        <%
            int orderId = (int) session.getAttribute("OrderId");
            Order o = LogicFacade.getOrder(orderId);
            for (int i = 0; i < LogicFacade.createList(o).size(); i++) {
        %>
        
        <table>
            <tr>
                <th> Beskrivelse </th>
                <th> Længde </th>
                <th> Antal </th>
                <th> Enhed </th>
                <th> Beskrivelse </th>
            </tr>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <th>Træ og Tagplader</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName()); %></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
           <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
           <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
           <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <th>Beslag & Skruer</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Pakke</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Rulle</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
               <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            </tr>
            <tr>
              <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
               <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Pakke</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Pakke</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
               <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Pakke</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Pakke</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Sæt</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription()); i++;%></td>
            </tr>
        </table>
        <%
            }
            %>
    </body>
</html>
