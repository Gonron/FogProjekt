<%-- 
    Document   : customerpage
    Created on : Aug 22, 2017, 2:33:37 PM
    Author     : kasper
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
 <style>
 body {font-family: Arial, Helvetica, sans-serif;}
 * {box-sizing: border-box}

h1 { color: #000000; font-family: 'Lato', sans-serif; font-size: 54px; font-weight: 300; line-height: 58px; margin: 0 0 58px; text-align: center; padding-top: 40px; }

.button {
  font: bold 20px Arial;
  text-decoration: none;
  background-color: #6666FF;
  color: #6666FF;
  padding: 2px 6px 2px 6px;
  border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
}


p{
    text-align: center; 
    font-family: 'Lato';
    font-size: 20px;
}

            a:link, a:visited {
  
    background-color: #6666FF;
    color: white;
    padding: 14px 25px;
    text-align: center;
    display: flex;

}


#box{
    padding: 16px;
    border: 4px;
    border-style: inset;
}

#paragraph{
padding-top: 30px;
 color: #333333; font-family: "Helvetica Neue",Arial,sans-serif; font-size: 16px; font-weight: 300; line-height: 1.5625; margin-bottom: 15px; }
 
a:hover, a:active {
    background-color: #4169e1;
}

            /* Change styles for cancel button and signup button on extra small screens */
            @media screen and (max-width: 300px) {
                .cancelbtn, .signupbtn {
                    width: 100%;
                }
            }
            </style>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer home page</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <h2>Hello ${email}</h2>
        <p>You are now logged in as a customer of our wonderful site.</p><br>   
        <div id="box">
        <a href="FrontController?command=createorder" class="button"> Start din ordre </a><br>
        <a href="FrontController?command=allOrdersCust" class="button"> Vis alle dine ordre </a><br>
        <a href="FrontController?command=contact" class="button"> Kontakt os </a>
</div>
        <div id="paragraph">
        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </div>
    </body>
</html>
