<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee home page</title>
    </head>
    <body>

        <h1>Hello <%=request.getParameter("email")%> </h1>
        Du er nu logget ind som medarbejder.
        <a href="FrontController?command=allOrdersEmp"> Se all ordre </a>
        <a href="FrontController?command=changematerials"> Opdater et materiale </a>        
    </body>
</html>
