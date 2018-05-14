<%-- 
    Document   : DynamicSVG
    Created on : 08-05-2018, 11:47:29
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
        <% int len = Integer.parseInt(request.getParameter("length")); %>
        <% int wid = Integer.parseInt(request.getParameter("width")); %>
    <SVG width="1000" height="5000">
    <rect x="0" y="<% Math.abs((len/2)-((len/10)/2)); %>" height="<% Math.abs(len/10); %>" width="<% request.getParameter("width"); %>"
        style="stroke:#000000; fill: #dcdfe5;"/>
    
    <rect x="0" y="0" height="<% request.getParameter("length"); %>" width="<% Math.abs(wid/10); %>"
        style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<% Math.abs(wid/2.5); %>" y="0" height="<% request.getParameter("length"); %>" width="<% Math.abs(wid/10); %>"
        style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<% Math.abs(wid/1.43); %>" y="0" height="<% request.getParameter("length"); %>" width="<% Math.abs(wid/10); %>"
        style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<% Math.abs(wid-(wid/10)); %>" y="0" height="<% request.getParameter("length"); %>" width="<% Math.abs(wid/10); %>"
        style="stroke:#000000; fill: #dcdfe5"/>
    
    <rect x="0" y="0" height="<% request.getParameter("length"); %>" width="<% request.getParameter("width"); %>"
        style="stroke:#000000; fill: none"/>
    
    
    
    <text x="<% Math.abs(wid+15); %>" y="<% Math.abs(len/2); %>" fill="Red"> Længde: <% request.getParameter("length"); %> </text>
    <text x="<% Math.abs(wid/2); %>" y="<% Math.abs(len+15); %>" fill="Red"> Bredde: <% request.getParameter("width"); %> </text>
    
    </SVG>
    </body>
</html>
