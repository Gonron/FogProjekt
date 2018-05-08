<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome page</title>
         <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
       
        <%@include file ="WEB-INF/header.jsp" %>

        <table>
            <tr>
            <td>Login</td>
                <td>
                    <form name="login" action="FrontController" method="POST">
                        <input type="hidden" name="command" value="login">
                        Email:<br>
                        <input type="text" name="email" placeholder="Email">
                        <br>
                        Password:<br>
                        <input type="password" name="password" placeholder="password">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </td>
                </div>
                <td>Or Register</td>
                <td>
                    <form name="register" action="FrontController" method="POST">
                        <input type="hidden" name="command" value="register">                       
                        <br>
                        Email:<br>
                        <input type="text" name="email" placeholder="Email">
                        <br>
                        Postnummer:<br>
                        <input type="text" name="postnr" placeholder="Postnummer">
                        <br>
                        Adresse:<br>
                        <input type="text" name="adress" placeholder="Adresse">
                        <br>
                        Telefonnr.:<br>
                        <input type="text" name="phonenr" placeholder="Tlf.">
                        <br>
                        Password:<br>
                        <input type="password" name="password1" placeholder="Password">
                        <br>
                        Genindtast Password:<br>
                        <input type="password" name="password2" placeholder="Password">
                        <br>
                      <input type="submit" value="Submit">
                    </form>
                </td>
            </tr>
        </table>
        <% String error = (String) request.getAttribute("error");
            if (error != null) {%>
        <p>Error!!</p>
        <p><%= error%>
            <% }
            %>
        </p>
    </body>
</html>
