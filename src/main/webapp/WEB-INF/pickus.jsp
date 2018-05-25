<%-- 
    Document   : pickus
    Created on : May 23, 2018, 1:23:34 PM
    Author     : kristoffer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


#fill{
    background-color: white;
    padding-left: 150px;
    padding-right: 150px;
}


.container {
    padding: 16px;
}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file ="header.jsp" %>
         
        <div class="container">
        <h1>Hos Johannes Fog bygger vi carporte i særklasse</h1>
        <p> vi har siden 1988 været danmarks bedst carports leverandøre, og vi vil med glæde også levere til dig
        vores materialer er altid i bedste kvalitet, og hvis du skulle være utilfreds med nogle af vores servicekrav, har vi vores kvalitetsgaranti, der sikrer, at alle vores kunder forbliver glade og tilfreds
        </p>
        <p> vi giver dig alle de nødvendige materialer, til at bygge en carport, på en overskuelig stykliste, samt en tegning, der viser hvordan carporten kommer til at se, både set fra oven og set fra siden. </p>
        <p>Hos Johannes Fog leverer vi en kvalitet som ingen andre tryk på knappen nedenfor for at starte din ordre</p>
        
        
        <a href="FrontController?command=register">Opret dig her</a>
        </div>
    </body>
</html>
