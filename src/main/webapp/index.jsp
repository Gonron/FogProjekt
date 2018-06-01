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

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Set a style for all buttons */
            button {
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            button:hover {
                opacity:1;
            }

            /* Extra styles for the cancel button */
            .loginbtn {
                padding: 14px 20px;
                background-color: #666DFF;
            }

            /* Float cancel and signup buttons and add an equal width */
            .signupbtn, .loginbtn {
                float: left;
                width: 50%;
            }

            /* Add padding to container elements */
            .container {
                padding: 16px;
            }

            .terms{

            }

            .logindiv{
                display: inline-block;
                padding-top: 60px;
                padding-right: 1000px;

            }


            /* Clear floats */
            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }

            .footer{
                display: block;
                padding-right: 20px;
            }

            header{
                background-color: #4169e1;
                padding-top:180px;
                padding-left: 50px;

            }

            #fill{
                background-color: white;
                padding-left: 150px;
                padding-right: 150px;
            }



            /* Change styles for cancel button and signup button on extra small screens */
            @media screen and (max-width: 300px) {
                .cancelbtn, .signupbtn {
                    width: 100%;
                }
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forside</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>




        <%@include file ="WEB-INF/header.jsp" %>

        <form name="register" action="FrontController" method="POST" style="border:1px solid #ccc">
            <input type="hidden" name="command" value="register">
            <div class="container">
                <h1>Opret Bruger</h1>
                <p>Udfyld denne formular for at oprette dig som bruger</p>
                <hr>

                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Email her" name="email" required>

                <label for="email"><b>Postnummer</b></label>
                <input type="text" placeholder="Postnummer her" name="postnr" required>

                <label for="email"><b>Adresse</label>
                <input type="text" placeholder="Adresse her" name="adress" required>

                <label for="email"><b>Telefonnummer</b></label>
                <input type="text" placeholder="Telefonnummer her" name="phonenr" required>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Password her" name="password1" required>

                <label for="psw-repeat"><b>Gentag Password</b></label>
                <input type="password" placeholder="Gentag Password her" name="password2" required>

                <label>
                    <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Husk mig
                </label>
                <div class="clearfix">
                    <button type="submit" class="signupbtn" value ="Submit">Opret Bruger</button>
                    </form>


                    <form name="login" action="FrontController" method="POST">
                        <input type="hidden" name="command" value="login">
                        <div class="logindiv">

                            <h1>LogInd</h1>
                        </div>
                        <hr>

                        <label for="email"><b>Email</b></label>
                        <input type="text" placeholder="Email her" name="email" required>

                        <label for="password"><b>Password</b></label>
                        <input type="password" placeholder="Password her" name="password" required>
                        <div class="clearfix">
                            <button type="submit" class="loginbtn" value="Submit">Log Ind</button>
                    </form>



                </div>


                <footer id="terms"><p>Ved at oprette dig som bruger acceptere du vores <a href="#" style="color:dodgerblue">Foretnings Betingelser</a>.</p>
                </footer>





                <% String error = (String) request.getAttribute("error");
                    if (error != null) {%>
                <p>Error!!</p>
                <p><%= error%>
                    <% }
                    %>
                </p>

                <%@include file="WEB-INF/footer.jsp" %>

                </body>
                </html>
