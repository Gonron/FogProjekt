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
       
        <header>
        <h1>Johannes Fog carport service</h1>  
        </header>
        <ul>
        <li><a class="active" href="hjem">Home</a></li>
        <li><a href="lavOrdre">News</a></li>
        <li><a href="kontakt">Contact</a></li>
        <li><a href="Om os">About</a></li>
        </ul>

        <table>
            <tr>
            <td>Login</td>
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
                        <input type="number" name="postnr" placeholder="Postnummer">
                        <br>
                        Adresse:<br>
                        <input type="text" name="adress" placeholder="Adresse">
                        <br>
                        Telefonnr.:<br>
                        <input type="number" name="phonenr" placeholder="Tlf.">
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
