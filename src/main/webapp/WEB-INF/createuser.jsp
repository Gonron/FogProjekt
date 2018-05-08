<%-- 
    Document   : createuser
    Created on : 01-05-2018, 12:22:26
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order</title>
    </head>
    <body>
        <%@include file ="header.jsp" %>
        
        <h1>OPRET BRUGER</h1>
        <p>Slip for at indtaste adresseoplysninger m.m. hver gang du handler. 
        <br />
        Opret dig som bruger på johannesfog.dk ved at indtaste oplysningerne nedenfor.<p/>
        
        <br>
        <form action="FrontController" name="order" method="POST">
            <div class="CreateUser">
            <input type="hidden" name="command" value="createorder">
                
            <lable for="name">Navn</lable>
            <input type="text" name="name" placeholder="Navn her">
                
            <label for="address">Addresse</label>    
            <input type="text" name="address" placeholder="Addresse her">
                
            <label for="postCode">Postnr.</label>    
            <input type="number" name="postCode" placeholder="Postnr. her">
                
            <label for="phoneNumber">Telefon</label>    
            <input type="number" name="phoneNumber" placeholder="Telefon her">
                
            <label for="eMail">E-mail</label>    
            <input type="text" name="eMail" placeholder="E-mail her">
                  
            <input type="submit" value="OPRET BRUGER">
                </div>
            </form>
        <br>
        
    </body>
</html>
