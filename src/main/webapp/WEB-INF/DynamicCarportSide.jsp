<%-- 
    Document   : DynamicCarportSide
    Created on : 14-05-2018, 09:56:57
    Author     : Johachim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carport der matcher målene.</title>
    </head>
    <body>
        <% int hei = Integer.parseInt(request.getParameter("height")); %>
        <% int wid = Integer.parseInt(request.getParameter("width")); %>
    </body>
    <SVG width="1000" height="5000">
    
        <rect x="0" y="25" height="<% request.getParameter("heihgt"); %>" width="<% Math.abs(wid/10); %>"
        style="stroke:#000000; fill: none"/>
        <rect x="<% Math.abs((wid/2)-(wid/10)); %>" y="25" height="<% request.getParameter("heihgt"); %>" width="<% Math.abs(wid/10); %>"
        style="stroke:#000000; fill: none"/>
        <rect x="<% Math.abs((wid)-(wid/10)); %>" y="25" height="<% request.getParameter("heihgt"); %>" width="<% Math.abs(wid/10); %>"
        style="stroke:#000000; fill: none"/>
    
        
        <rect x="0" y="0" height="25" width="360"
        style="stroke:#000000; fill: none"/>
        <rect x="125" y="0" height="25" width="140"
        style="stroke:#000000; fill: none"/>
        
    
    </SVG>

    <input type="submit" name="Oppefra" value="Set oppefra">
    <input type="submit" name="Bestil" value="Fortsæt">
     
</html>
