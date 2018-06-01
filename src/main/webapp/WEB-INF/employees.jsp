<%-- 
    Document   : employees
    Created on : May 28, 2018, 7:34:48 PM
    Author     : kristoffer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" <meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
html {
  box-sizing: border-box;
}


h1{
    padding-top: 20px;
    text-align: center;
    
}
*, *:before, *:after {
  box-sizing: inherit;
}


.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color:#4169e1 ;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
</style>
<title>Mød Medarbejderne</title>
</head>
<body>
    <%@include file="header.jsp" %>

   <div class="w3-container w3-center w3-animate-bottom">
<h1>Mød vores talentfulde udviklere</h1>
    </div>
    <div class="w3-container w3-center w3-animate-top">
        <h2>High Ground fra Cphbusiness</h2>
    </div>
<br>

<div class="row">
  <div class="column">
    <div class="card">
      <img src="https://cdn.discordapp.com/attachments/409996330790813710/450722901830926346/manden.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Kristoffer Tolboll</h2>
        <p class="title">Developer & CEO</p>
        <p>Scrum-master i uge 2, og software udvikler for Johannes Fog. </p>
        <b>cph-kt119@cphbuisness.dk</b>
        <p><button class="button">Kontakt</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://media.discordapp.net/attachments/409996330790813710/450719209476063252/morten.jpg?width=469&height=475" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Morten</h2>
        <p class="title">Developer & Scrum-master</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <b>cph-mb537@cphbusiness.dk</b>
        <p><button class="button">Kontakt</button></p>
      </div>
    </div>
  </div>
  <div class="row">
  <div class="column">
    <div class="card">
      <img src="https://media.discordapp.net/attachments/409996330790813710/450718258455379979/image.jpg?width=351&height=355" alt="John" style="width:100%">
      <div class="container">
        <h2>Michael</h2>
        <p class="title">Developer & CFO</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <b>cph-ml510@cpbbusiness.dk</b>
        <p><button class="button">Kontakt</button></p>
      </div>
    </div>
  </div>
    <div class="column">
    <div class="card">
      <img src="https://media.discordapp.net/attachments/409996330790813710/450719687840366603/unknown.png?width=235&height=260" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Johachim</h2>
        <p class="title">Developer & Art Director</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <b>cph-jg133@cphbusiness.dk</b>
        <p><button class="button">Kontakt</button></p>
      </div>
    </div>
  </div>
</div>
 <%@include file="footer.jsp" %>
</body>
</html>
