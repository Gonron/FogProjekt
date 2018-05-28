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

        <style>
            thead{
                border: 2px solid black;
                color: #27408B;

            }


            h1{
                padding-top: 30px;
            }


            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box}

            h1 {padding-top: 30px; color: #000000; font-family: 'Lato', sans-serif; font-size: 54px; font-weight: 300; line-height: 58px; margin: 0 0 58px; }

            p {
                font-size: 20px;
                font-family: Arial, Helvetica, sans-serif;
            }

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



            .zui-table {
                border: solid 1px #DDEEEE;
                border-collapse: collapse;
                border-spacing: 0;
                font: normal 14px Arial, sans-serif;
                width: 60%;
                height: 35%

            }
            .zui-table thead th {
                background-color: #DDEFEF;
                border: solid 1px #DDEEEE;
                color: #336B6B;
                padding: 10px;
                text-align: left;
                text-shadow: 1px 1px 1px #fff;
            }
            .zui-table tbody td {
                border: solid 1px #DDEEEE;
                color: #333;
                padding: 10px;
                text-shadow: 1px 1px 1px #fff;
            }

            input[type=text]:focus {
                border: 3px solid #555;
            }

            input[type=number] {
                margin-bottom: 30px;
            }

            * {
                box-sizing: border-box;
            }



            /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 600px) {
                .col-25, .col-75, input[type=submit] {
                    width: 100%;
                    margin-top: 0;
                }
            }
        </style>
    </head>
    <body>
        <%@include file ="header.jsp" %>
        <%@include file="isValidUser.jsp" %>
        <h1>Her er en liste over alle materialer du skal bruge i din carport!</h1>


        <%            int orderId = (int) session.getAttribute("OrderId");
            Order o = LogicFacade.getOrder(orderId);
            for (int i = 0; i < LogicFacade.createList(o).size(); i++) {
        %>

        <table class="table">

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
        out.println("<br>" + "Pris: " + totalPrice * 10 + "kr.");
    }
%>
   <%@include file="footer.jsp" %>
</body>
</html>
