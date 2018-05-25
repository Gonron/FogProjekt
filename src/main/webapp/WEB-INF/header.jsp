
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
    background-color: #27408B;
}

.active {
    background-color: #4169e1;
}


header .logo{
  display: block;
  width: 400px;
}
header img{
  display: block;
  width: 100%;
}
header{
  background-color: white;
  box-shadow: 0 2px 4px rgba(0,0,0,0.14);
  display: flex;
  justify-content: center;
  padding: 40px;
}

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

h1 { color: #000000; font-family: 'Lato', sans-serif; font-size: 54px; font-weight: 300; line-height: 58px; margin: 0 0 58px; }


</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="main.css" />
    </head>
    <body>
       <div id="fill">
    <header>
  <a href="#" class="logo" title="Logo">
    <img src="https://prisbyg.libpx.com/eu-west-1/images/merchant/johannesfog.jpg" alt="Johannes Fog">
  </a>
    </header>
        <ul>
        <li><a class="active" href="hjem">Hjem</a>
        </li>
        <li><a href="FrontController?command=pickus">Hvorfor vælge os</a></li>
        <li><a href="FrontController?command=contact">Kontakt</a></li>
        <li><a href="FrontController?command=about">Omkring os</a></li>
        </ul>
