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
        <title>Fog - Carport grundtegning.</title>
    </head>
    <body>
        <% Order o = (Order) session.getAttribute("order"); %>
        <% double len = o.getLength(); %>
        <% double wid = o.getWidth(); %>
    <SVG width="<%= Math.abs(wid*2) %>" height="<%= Math.abs(len+100) %>">
    <rect x="0" y="<%= Math.abs((len/2)-((len/10)/2)) %>" height="<%= Math.abs(len/10) %>" width="<%= wid %>"
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
    

    
    <text x="<%= Math.abs(wid+25) %>" y="<%= Math.abs(len/2) %>" fill="Red"> Længde: <%= len %> cm </text>
    <text x="<%= Math.abs((wid/2)-25) %>" y="<%= Math.abs(len+35) %>" fill="Red"> Bredde: <%= wid %> cm </text>
    
    
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
<line x1="0"  y1="<%= Math.abs(len+20) %>" x2="<%= wid %>" y2="<%= Math.abs(len+20) %>" 
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
    
    </SVG>
    
    <form action="FrontController?command=DynamicCarportSide" name="order" method="POST">
        <input type="hidden" name="length" value="<%= len %>">
        <input type="hidden" name="width" value="<%= wid %>">
        <input type="submit" value="Side tegning">
    </form>
    </body>
</html>

