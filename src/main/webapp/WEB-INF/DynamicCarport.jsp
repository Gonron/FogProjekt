<%-- 
    Document   : DynamicSVG
    Created on : 08-05-2018, 11:47:29
    Author     : Johachim
--%>

<%@page import="FunctionLayer.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="main.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fog - Carport grundtegning</title>
    </head>
    <body>
        <%@include file ="header.jsp" %>
        <%@include file="isValidUser.jsp" %>
        <% Order o = (Order) session.getAttribute("order"); %>
        <% boolean shed = o.getShed(); %>
        <% double len = o.getLength(); %>
        <% double wid = o.getWidth(); %>
    <SVG width="<%= Math.abs((wid*3)) %>" height="<%= Math.abs(len*2) %>">
    
    
    <rect x="0" y="0" height="<%= Math.abs(len/10) %>" width="<%= wid %>"
        style="stroke:#000000; fill: #dcdfe5;"/>
    <rect x="0" y="<%= Math.abs(len-(len/10)) %>" height="<%= Math.abs(len/10) %>" width="<%= wid %>"
        style="stroke:#000000; fill: #dcdfe5;"/>
    
    
    <rect x="0" y="0" height="<%= len %>" width="<%= Math.abs(wid/10) %>"
        style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<%= Math.abs(wid-(wid/2.5)) %>" y="0" height="<%= len %>" width="<%= Math.abs(wid/10) %>"
        style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<%= Math.abs(wid-(wid/1.43)) %>" y="0" height="<%= len %>" width="<%= Math.abs(wid/10) %>"
        style="stroke:#000000; fill: #dcdfe5"/>
    <rect x="<%= Math.abs(wid-(wid/10)) %>" y="0" height=" <%= len %>" width="<%= Math.abs(wid/10) %>"
        style="stroke:#000000; fill: #dcdfe5"/>
   
    <rect x="0" y="0" height="<%= len %>" width="<%= wid %>"
        style="stroke:#000000; fill: none"/>
    
    
    <line x1="0" y1="0" x2="<%= wid %>" y2="<%= len %>"
      style="stroke: #000000; fill:none;
      stroke-width: 2px;
      stroke-dasharray: 10 5"/>
    <line x1="0" y1="<%= len %>" x2="<%= wid %>" y2="0"
      style="stroke: #000000; fill:none;
      stroke-width: 2px;
      stroke-dasharray: 10 5"/>
    
    
    
    <text x="<%= Math.abs(wid+25) %>" y="<%= Math.abs(len/2) %>" fill="Red"> Længde: <%= len %> cm </text>
    <text x="<%= Math.abs((wid/2)-25) %>" y="<%= Math.abs(len+80) %>" fill="Red"> Bredde: <%= wid %> cm </text>
    
    
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
<line x1="0"  y1="<%= Math.abs(len+60) %>" x2="<%= wid %>" y2="<%= Math.abs(len+60) %>" 
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
<line x1="<%= Math.abs(wid+20) %>"  y1="0" x2="<%= Math.abs(wid+20) %>" y2="<%= len %>"
    style="stroke:#c40d0d;
    marker-start: url(#beginArrow);
   marker-end: url(#endArrow);"/>  

    <% if(shed){ %>
    
    <rect x="<%= Math.abs(wid-200) %>" y="0" height="<%= len %>" width="200"
        style="stroke:#000000; stroke-width: 3; fill: none"/>
    
    
    <rect x="<%= Math.abs(wid-200) %>" y="0" height="10" width="10"
        style="stroke:#000000; fill: #101111"/>
    <rect x="<%= Math.abs(wid-10) %>" y="0" height="10" width="10"
        style="stroke:#000000; fill: #101111"/>
    <rect x="<%= Math.abs(wid-200) %>" y="<%= Math.abs(len-10) %>" height="10" width="10"
        style="stroke:#000000; fill: #101111"/>
    <rect x="<%= Math.abs(wid-10) %>" y="<%= Math.abs(len-10) %>" height="10" width="10"
        style="stroke:#000000; fill: #101111"/>
    
    <text x="<%= Math.abs((wid-200)+(wid/8)) %>" y="<%= Math.abs(len+35) %>" fill="Red"> Skur: 200.0 cm </text>
    
    <line x1="<%= Math.abs(wid-200) %>"  y1="<%= Math.abs(len+20) %>" x2="<%= wid %>" y2="<%= Math.abs(len+20) %>" 
	style="stroke:#c40d0d;
	marker-start: url(#beginArrow);
        marker-end: url(#endArrow);"/>  

    <% } %>

    </SVG>
    <form action="FrontController?command=DynamicCarportSide" name="order" method="POST">
        <input type="hidden" name="length" value="<%= len %>">
        <input type="hidden" name="width" value="<%= wid %>">
        <input type="hidden" name="shed" value="<%= shed %>">
        <input type="submit" value="Side tegning">
    </form>
          <%@include file="footer.jsp" %>
</body>
</html>

