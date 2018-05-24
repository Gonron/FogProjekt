<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box}

            h1 { color: #000000; font-family: 'Lato', sans-serif; font-size: 54px; font-weight: 300; line-height: 58px; margin: 0 0 58px; }

            a:link, a:visited {
            background-color: #f44336;
            color: white;
            padding: 14px 25px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            }


            a:hover, a:active {
            background-color: white;
        }

            /* Change styles for cancel button and signup button on extra small screens */
            @media screen and (max-width: 300px) {
                .cancelbtn, .signupbtn {
                    width: 100%;
                }
            }




        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome page</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>




        <%@include file ="WEB-INF/header.jsp" %>

        <form name="register" action="FrontController" method="POST" style="border:1px solid #ccc">
            <input type="hidden" name="command" value="register">
            <div class="container">
                <h1>Sign Up</h1>
                <p>Please fill in this form to create an account.</p>
                <hr>

                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email" required>

                <label for="email"><b>Postnummer</b></label>
                <input type="text" placeholder="Skriv dit postnummer" name="postnr" required>

                <label for="email"><b>Adresse</label>
                <input type="text" placeholder="Skriv din adresse" name="adress" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="passsword" required>
                <label for="email"><b>Telefonnummer</b></label>
                <input type="text" placeholder="Skriv dit telefonnummer" name="phonenr" required>


                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="password1" required>

                <label for="psw-repeat"><b>Repeat Password</b></label>
                <input type="password" placeholder="Repeat Password" name="password2" required>

                <label>
                    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                </label>
                <div class="clearfix">
                    <button type="submit" class="signupbtn" value ="Submit">Sign Up</button>
                    </form>


                    <form name="login" action="FrontController" method="POST">
                        <input type="hidden" name="command" value="login">
                        <div class="logindiv">

                            <h1>Login</h1>
                        </div>
                        <hr>

                        <label for="email"><b>Email</b></label>
                        <input type="text" placeholder="Enter Email" name="email" required>

                        <label for="password"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="password" required>
                        <div class="clearfix">
                            <button type="submit" class="loginbtn" value="Submit">Login</button>
                    </form>



                </div>


                <footer><p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                </footer>



                <% String error = (String) request.getAttribute("error");
                    if (error != null) {%>
                <p>Error!!</p>
                <p><%= error%>
                    <% }
                    %>
                </p>

                </body>
                </html>
