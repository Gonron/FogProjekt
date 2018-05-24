<%-- 
    Document   : contact
    Created on : 03-05-2018, 12:50:23
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
             body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

h1 {padding-top: 30px; color: #000000; font-family: 'Lato', sans-serif; font-size: 54px; font-weight: 300; line-height: 58px; margin: 0 0 58px; }

p {
    font-size: 20px;
    font-family: Arial, Helvetica, sans-serif;
}

            
        </style>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file ="header.jsp" %>
        <h1>Kontakt Information</h1>
        <p>Tlf: 23759305</p>
        <p>Pressechef: Kristoffer Tølbøll</p>
        <p>Besøg os i vores butik på Lyngbyvej 132</p>
        <p>Vi står altid klar til at tage i mod din bestilling herinde på vores hjemmeside, hvor vi svarer indenfor 24 timer</p>
        <p>Vi yder den bedst mulige service</p>
    
        <br>
        <adrress> skriv til os på
        <a href="mailto:johannesfog@hotmail.dk"> email</a>
        </adrress>
    </body>
</html>
