<%-- 
    Document   : isValidUser
    Created on : May 25, 2018, 11:58:37 AM
    Author     : kristoffer
--%>

<%@page import="FunctionLayer.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    
    <%
        User u = (User) session.getAttribute("user");
        if(u == null){
            request.getRequestDispatcher("../index.jsp").forward(request, response);
        }


        
        %>
</html>
