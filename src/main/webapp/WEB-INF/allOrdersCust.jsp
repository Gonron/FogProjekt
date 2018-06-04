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
            
            h2 {padding-top: 30px; color: #000000; font-family: 'Lato', sans-serif; font-size: 48px; font-weight: 300; line-height: 58px; margin: 0 0 58px; }
        
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


input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
    padding-bottom: 30px;
    margin-bottom: 30px;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: left;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
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
        <h1>Her er en liste over alle dine ordre!</h1>
        
        
        <table class="zui-table table-hover">
           
            
            <thead>
            <tr>  
                <th> Ordernummer </th>
                <th> Længde </th>
                <th> Brede </th>
                <th> Sendt </th>
                <th> Skur </th>          
            </tr>
             </thead>
            <tr>
                <td><b>  </b></td>
                <td><b> Centimeter </b></td>
                <td><b> Centimeter </b></td>
                <td><b>  </b></td>
                <td><b>  </b></td>
            </tr>
            <%   //User u = (User) session.getAttribute("user");
                for (int i = 0; i < LogicFacade.getOrders(u).size(); i++) {
                    System.out.println(LogicFacade.getOrders(u).get(i));
            %>

            <tr>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getId());%></td>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getLength());%></td>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getWidth());%></td>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getStatus());%></td>
                <td><%out.print(LogicFacade.getOrders(u).get(i).getShed());%></td>
            </tr>
            <%              }
            %>
        </table>

        <h2>For at se en stykliste over materialer i en ordre, indtast ordrenummeret</h2>
        <form name="materialListOrder" action="FrontController" method="POST">
            <input type="hidden" name="command" value="materialListOrder">
            <input type="number" name="id" placeholder="Order id" required/>            
            <input type="submit" value="Se stykliste"/>           
        </form>         
        <form name="DynamicCarport" action="FrontController" method="POST">
            <input type="hidden" name="command" value="DynamicCarport">
            <input type="number" name="idt" placeholder="Order id" required/>            
            <input type="submit" value="Se tegning af carport"/>           
        </form>        
  <%@include file="footer.jsp" %>
    </body>
</html>
