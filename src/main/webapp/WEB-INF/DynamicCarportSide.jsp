<%-- 
    Document   : DynamicCarportSide
    Created on : 14-05-2018, 09:56:57
    Author     : Johachim
--%>

<%@page import="FunctionLayer.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fog - Carport sidetegning</title>
    </head>
    <body>
        <%@include file ="header.jsp" %>
        <%@include file="isValidUser.jsp" %>
      <% Order o = (Order) session.getAttribute("order"); %>
        <% double len = o.getLength(); %>
        <% double wid = o.getWidth();%>
        <% boolean shed = o.getShed(); %>
    </body>
    <SVG width="<%= Math.abs(wid * 2)%>" height="<%= Math.abs(len + 100)%>">

    <rect x="0" y="0" height="25" width="<%= Math.abs(wid / 2)%>"
          style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<%= Math.abs(wid / 2)%>" y="0" height="25" width="<%= Math.abs(wid / 2)%>"
          style="stroke:#000000; fill: #dcdfe5"/>

    <rect x="0" y="25" height="210" width="<%= Math.abs(wid / 10)%>"
          style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<%= Math.abs((wid / 2) - (wid / 20))%>" y="25" height="210" width="<%= Math.abs(wid / 10)%>"
          style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<%= Math.abs((wid) - (wid / 10))%>" y="25" height="210" width="<%= Math.abs(wid / 10)%>"
          style="stroke:#000000; fill: #dcdfe5"/>

    <text x="<%= Math.abs(wid + 25)%>" y="115" fill="Red"> Højde: 210 cm </text>
    <text x="<%= Math.abs(wid + 25)%>" y="15" fill="Red"> Højde: 25 cm </text>
    <text x="<%= Math.abs((wid / 2) - 25)%>" y="325" fill="Red"> Bredde: <%= wid%> cm </text>


    <defs>
    <marker id="beginArrow" 
            markerWidth="9" markerHeight="9" 
            refX="0" refY="4" 
            orient="auto">
        <path d="M0,4 L8,0 L8,8 L0,4" style="fill: #c40d0d;" />
    </marker>
    <marker id="endArrow" 
            markerWidth="9" markerHeight="9" 
            refX="8" refY="4" 
            orient="auto">
        <path d="M0,0 L8,4 L0,8 L0,0" style="fill: #c40d0d;" />
    </marker>
    </defs>
    <line x1="0"  y1="300" x2="<%= wid%>" y2="300" 
          style="stroke:#c40d0d;
          marker-start: url(#beginArrow);
          marker-end: url(#endArrow);"/>
    <defs>
    <marker id="beginArrow2" 
            markerWidth="9" markerHeight="9" 
            refX="0" refY="4" 
            orient="auto">
        <path d="M0,4 L8,0 L8,8 L0,4" style="fill: #c40d0d;" />
    </marker>
    <marker id="endArrow2" 
            markerWidth="9" markerHeight="9" 
            refX="8" refY="4" 
            orient="auto">
        <path d="M0,0 L8,4 L0,8 L0,0" style="fill: #c40d0d;" />
    </marker>
    </defs>
    <line x1="<%= Math.abs(wid + 20)%>"  y1="25" x2="<%= Math.abs(wid + 20)%>" y2="235" 
          style="stroke:#c40d0d;
          marker-start: url(#beginArrow);
          marker-end: url(#endArrow);"/>
    <defs>
    <marker id="beginArrow2" 
            markerWidth="9" markerHeight="9" 
            refX="0" refY="4" 
            orient="auto">
        <path d="M0,4 L8,0 L8,8 L0,4" style="fill: #c40d0d;" />
    </marker>
    <marker id="endArrow2" 
            markerWidth="9" markerHeight="9" 
            refX="8" refY="4" 
            orient="auto">
        <path d="M0,0 L8,4 L0,8 L0,0" style="fill: #c40d0d;" />
    </marker>
    </defs>
    <line x1="<%= Math.abs(wid + 20)%>"  y1="0" x2="<%= Math.abs(wid + 20)%>" y2="25" 
          style="stroke:#c40d0d;
          marker-start: url(#beginArrow);
          marker-end: url(#endArrow);"/>

    <% if(shed){ %>

    <rect x="<%= Math.abs(wid-200) %>" y="25" height="210" width="200"
        style="stroke:#000000; stroke-width: 3; fill: none"/>
    
    <rect x="<%= Math.abs(wid-200) %>" y="25" height="210" width="10"
        style="stroke:#000000; stroke-width: 1; fill: #000000"/>
    <rect x="<%= Math.abs(wid-10) %>" y="25" height="210" width="10"
        style="stroke:#000000; stroke-width: 1; fill: #000000"/>
    
    <line x1="<%= Math.abs(wid-200) %>"  y1="250" x2="<%= wid%>" y2="250" 
          style="stroke:#c40d0d;
          marker-start: url(#beginArrow);
          marker-end: url(#endArrow);"/>
    
    <text x="<%= Math.abs((wid-200)+(wid/8))%>" y="270" fill="Red"> Skur: 200.0 cm </text>
    
    <% } %>
    
    </SVG>

    <form action="FrontController?command=DynamicCarport" method="POST">        
        <input type="hidden" name="length" value="<%= len%>">
        <input type="hidden" name="width" value="<%= wid%>">
        <input type="hidden" name="shed" value="<%= shed %>">
        <input type="submit" value="Grundtegning">
    </form>

    <form action="FrontController?command=allOrdersCust" method="POST">
        <input type="submit" value="Se alle dine ordrer">
    </form>
          <%@include file="footer.jsp" %>
</body>
</html>
