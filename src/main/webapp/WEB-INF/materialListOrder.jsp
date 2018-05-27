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
     
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        <style>
            thead{
                border: 2px solid black;
                color: #27408B;
                
            }
        </style>
    </head>
    <body>
        <%@include file ="header.jsp" %>
        <%@include file="isValidUser.jsp" %>
        <h1>Her er en liste over alle materialer du skal bruge i din carport!</h1>
        
        
        <%
            int orderId = (int) session.getAttribute("OrderId");
            Order o = LogicFacade.getOrder(orderId);
            for (int i = 0; i < LogicFacade.createList(o).size(); i++) {
        %>

        <table class="table table-hover">
        
            <thead>
            <tr>
                <th> Beskrivelse </th>
                <th> Længde </th>
                <th> Antal </th>
                <th> Enhed </th>
                <th> Beskrivelse </th>
            </tr>
        </thead>
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
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
            <thead>
                <th>Beslag & Skruer</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
             </thead>
            <tr>
            <tr>
                <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
                <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
                <td>Pakke</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                    i++;%></td>
            </tr>
        </tr>
        <tr>
            <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
            <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
            <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
            <td>Rulle</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                i++;%></td>
        </tr>
        <tr>
        <tr>
            <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
            <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
            <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
            <td>Stk</td>
                <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
                i++;%></td>
        </tr>
    </tr>
    <tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Stk</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Pakke</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Pakke</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Stk</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Stk</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Pakke</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Pakke</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Sæt</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Stk</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
    <tr>
        <td><%out.println(LogicFacade.createList(o).get(i).getName());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getLength());%></td>
        <td><%out.println(LogicFacade.createList(o).get(i).getAmount());%></td>
        <td>Stk</td>
            <td><%out.println(LogicFacade.createList(o).get(i).getDescription());
            i++;%></td>
    </tr>
</table>
            
<%
        int totalPrice = 0;
        for (int j = 0; j < LogicFacade.createList(o).size(); j++) {
            totalPrice = totalPrice + LogicFacade.createList(o).get(j).getPrice();            
        }
        out.println("<br>"+ "Pris: " + totalPrice*10 + "kr.");
    }
%>
</body>
</html>
