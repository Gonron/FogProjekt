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
        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box}

            h1 { color: #000000; font-family: 'Lato', sans-serif; font-size: 54px; font-weight: 300; line-height: 58px; margin: 0 0 58px; text-align: center; padding-top: 40px; }

.button {
  font: bold 11px Arial;
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


div{
    padding: 16px;
    border: 4px;
    border-style: inset;
}


a:hover, a:active {
    background-color: #4169e1;
}   

   @media screen and (max-width: 300px) {
                .cancelbtn, .signupbtn {
                    width: 100%;
                }
            }
        </style>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer home page</title>
        <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <h1>Hello <%=request.getParameter("email")%> </h1>
        You are now logged in as a customer of our wonderful site.<br>      
        <a href="FrontController?command=createorder" class="button"> Start din ordre </a><br>
        <a href="FrontController?command=allOrdersCust" class="button"> Vis alle dine ordre </a><br>
        <a href="FrontController?command=contact" class="button"> Kontakt os </a>
    </body>
</html>
