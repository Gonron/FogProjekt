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
    </head>
    <body>
        <h1>Welcome to Sem 2</h1>
        <SVG width="255" height=210>
<rect width="255" height="210" style="fill:#FFFF00"/>
<rect x="0" y="0" height="90" width="90"
        style="stroke:#000000; fill: #120CE8"/>
<rect x="120" y="0" height="90" width="135"
        style="stroke:#000000; fill: #120CE8"/>
<rect x="0" y="120" height="90" width="90"
        style="stroke:#000000; fill: #120CE8"/>
<rect x="120" y="120" height="90" width="135"
        style="stroke:#000000; fill: #120CE8"/>
</SVG>
        <table>
            <tr><td>Login</td>
                <td>
                    <form name="login" action="FrontController" method="POST">
                        <input type="hidden" name="command" value="login">
                        Email:<br>
                        <input type="text" name="email" value="someone@nowhere.com">
                        <br>
                        Password:<br>
                        <input type="password" name="password" value="sesam">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </td>
                <td>Or Register</td>
                <td>
                    <form name="register" action="FrontController" method="POST">
                        <input type="hidden" name="command" value="register">
                        Username:<br>
                        <input type="text" name="username" value="User">
                        <br>
                        Email:<br>
                        <input type="text" name="email" value="someone@nowhere.com">
                        <br>
                        Password:<br>
                        <input type="password" name="password1" value="sesam">
                        <br>
                        Retype Password:<br>
                        <input type="password" name="password2" value="sesam">
                        <br>
                        <input type="submit" value="Submit">
                    </form>
                </td>
            </tr>
        </table>
        <% String error = (String) request.getAttribute("error");
                                if (error != null) {%>
        <H2>Error!!</h2>
        <p><%= error%>
            <% }
            %>
    </body>
</html>
