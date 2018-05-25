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
        <style>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Orders</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <%@include file ="header.jsp" %>
        <%@include file="isValidUser.jsp" %>
        <h1>Her er en liste over alle ordre</h1>
        <%for (int i = 0; i < LogicFacade.getOrders().size(); i++) {
                out.print(LogicFacade.getOrders().get(i).toString()+"<br>");}%>
                <h2>For at markere en ordre som sendt, indtast ordrenummeret</h2>
        <form name="sent" action="FrontController" method="POST">
            <input type="hidden" name="command" value="EmpControl">
            <input type="number" name="id" placeholder="Order id" required/>            
            <input type="submit" value="Mark as sent"/>         
         </form>
    </body>
</html>
