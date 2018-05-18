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
        <% int wid = Integer.parseInt(request.getParameter("width")); %>
    </body>
    <SVG width="<%= Math.abs(wid*2) %>" height="400">
    
        <rect x="0" y="0" height="25" width="<%= Math.abs(wid/2) %>"
        style="stroke:#000000; fill: none"/>
        <rect x="<%= Math.abs(wid/2) %>" y="0" height="25" width="<%= Math.abs(wid/2) %>"
        style="stroke:#000000; fill: none"/>
        
        <rect x="0" y="25" height="210" width="<%= Math.abs(wid/10) %>"
        style="stroke:#000000; fill: none"/>
        <rect x="<%= Math.abs((wid/2)-(wid/20)) %>" y="25" height="210" width="<%= Math.abs(wid/10) %>"
        style="stroke:#000000; fill: none"/>
        <rect x="<%= Math.abs((wid)-(wid/10)) %>" y="25" height="210" width="<%= Math.abs(wid/10) %>"
        style="stroke:#000000; fill: none"/>
    
        
        
    
    </SVG>
    
    <form action="FrontController?command=DynamicCarport" method="POST">
    <input type="submit" value="Grundtegning">
    </form>
</html>
