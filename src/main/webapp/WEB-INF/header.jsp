
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: teal;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
        <header>
        <h1>Johannes Fog carport service</h1>  
        </header>
        <ul>
        <li><a class="active" href="hjem">Hjem</a>
        </li>
        <li><a href="FrontController?command=createorder">Lav Ordre</a></li>
        <li><a href="FrontController?command=contact">Kontakt</a></li>
        <li><a href="FrontController?command=about">Omkring os</a></li>
        </ul>
