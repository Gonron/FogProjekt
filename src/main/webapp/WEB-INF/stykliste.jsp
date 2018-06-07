<%-- 
    Document   : stykliste
    Created on : 14-05-2018, 09:23:50
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main.css" />

        <title>JSP Page</title>
        <style>
           
             .zui-table {
    border: solid 1px #DDEEEE;
    border-collapse: collapse;
    border-spacing: 0;
    font: normal 14px Arial, sans-serif;
    width: 60%;
    height: 35%

    }
    .zui-table thead th {
    background-color: #DDEFEF;
    border: solid 1px #DDEEEE;
    color: #336B6B;
    padding: 10px;
    text-align: left;
    text-shadow: 1px 1px 1px #fff;
    }
    .zui-table tbody td {
    border: solid 1px #DDEEEE;
    color: #333;
    padding: 10px;
    text-shadow: 1px 1px 1px #fff;
    }
            
    
     input[type=text]:focus {
    border: 3px solid #555;
	}

	input[type=number] {
    margin-bottom: 30px;
	}

* {
    box-sizing: border-box;
}


input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
    padding-bottom: 30px;
    margin-bottom: 30px;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: left;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
      
      
        </style>
    </head>
    <body>
        <%@include file ="header.jsp" %>
        <%@include file="isValidUser.jsp" %>
        <h1>Stykliste</h1>
        <%
            //request.getParameter(name)
        %>

        <table class="zui-table table-hover">
            <tr>
                <th> Beskrivelse </th>
                <th> Længde </th>
                <th> Antal </th>
                <th> Enhed </th>
                <th> Beskrivelse </th>
            </tr>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <th>Træ og Tagplader</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <td>25x200 mm. Trykimp. Brædt</td>
                <td>360</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Understernbrædder til for & bag ende</td>
            </tr>
            <tr>
                <td>25x200 mm. Trykimp. Brædt</td>
                <td>540</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Understernbrædder til siderne</td>
            </tr>
            <tr>
                <td>25x125 mm. Trykimp. Brædt</td>
                <td>360</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Oversternbrædder til forenden</td>
            </tr>
            <tr>
                <td>25x125 mm. Trykimp. Brædt</td>
                <td>540</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Oversternbrædder til siderne</td>
            </tr>
            <tr>
                <td>38x74mm. Lægte. ubh.</td>
                <td>420</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Til z på bagside af dør</td>
            </tr>
            <tr>
                <td>45x95mm. Reglar ub.</td>
                <td>270</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Løsholter til skur gavle</td>
            </tr>
            <tr>
                <td>45x95mm Reglar ub.</td>
                <td>240</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Løsholter til skur sider</td>
            </tr>
            <tr>
                <td>45x195mm. Spærtræ ubh.</td>
                <td>600</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Remme i sider, sadles ned i stolper</td>
            </tr>
            <tr>
                <td>45x195mm. Spærtræ ubh.</td>
                <td>480</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Remme i sider, sadles ned i stolper (skur del, deles)</td>
            </tr>
            <tr>
                <td>45x195mm. Spærtræ ubh.</td>
                <td>600</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Spær, monteres på rem</td>
            </tr>
            <tr>
                <td>97x97mm. Trykimp. Stolpe</td>
                <td>300</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Stolper nedgraves 90cm. i jorden</td>
            </tr>
            <tr>
                <td>19x100mm. Trykimp. Brædt</td>
                <td>210</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Til beklædning af skur</td>
            </tr>
            <tr>
                <td>19x100mm. Trykimp. Brædt</td>
                <td>540</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Vandbrædt på stern i sider</td>
            </tr>
            <tr>
                <td>19x100mm. Trykimp. Brædt</td>
                <td>360</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Vandbrædt på stern i forende</td>
            </tr>
            <tr>
                <td>Plastmo Ecolite Blåtonet</td>
                <td>600</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Tagplader monteres på spær</td>
            </tr>
            <tr>
                <td>Plastmo Ecolite Blåtonet</td>
                <td>360</td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Tagplader monteres på spær</td>
            </tr>
            <tr>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <th>Beslag & Skruer</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            <tr>
                <td>Plastmo Bundskruer 200stk.</td>
                <td></td>
                <td>xxx</td>
                <td>Pakke</td>
                <td>Skrurer til tagplader</td>
            </tr>
            <tr>
                <td>Hulbånd 1x20mm. 10mtr.</td>
                <td></td>
                <td>xxx</td>
                <td>Rulle</td>
                <td>Til vindkryds på spær</td>
            </tr>
            <tr>
                <td>Universal 190mm højre</td>
                <td></td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Til montering af spær på rem</td>
            </tr>
            <tr>
                <td>Universla 190mm venstre</td>
                <td></td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Til montering af spær på rem</td>
            </tr>
            <tr>
                <td>4,5x60mm. Skruer 200 stk.</td>
                <td></td>
                <td>xxx</td>
                <td>Pakke</td>
                <td>Til motering af stern & vandbrædt</td>
            </tr>
            <tr>
                <td>4,0x50mm. Beslagskrurer 250 stk.</td>
                <td></td>
                <td>xxx</td>
                <td>Pakke</td>
                <td>Til montering af universalbeslag + hulbånd</td>
            </tr>
            <tr>
                <td>Bræddebolt 10x120mm.</td>
                <td></td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Til montering af rem på stolper</td>
            </tr>
            <tr>
                <td>Firkantskiver 40x40x11mm</td>
                <td></td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Til montering af rem på stolper</td>
            </tr>
            <tr>
                <td>4,5x70mm. Skruer 400 stk.</td>
                <td></td>
                <td>xxx</td>
                <td>Pakke</td>
                <td>Til montering af yderste beklædning </td>
            </tr>
            <tr>
                <td>4,5x50mm Skruer 300 stk.</td>
                <td></td>
                <td>xxx</td>
                <td>Pakke</td>
                <td>Til montering af inderste beklædning</td>
            </tr>
            <tr>
                <td>Stalddørsgreb 50x75</td>
                <td></td>
                <td>xxx</td>
                <td>Sæt</td>
                <td>Til lås på dør i skur</td>
            </tr>
            <tr>
                <td>T-hængsel 390mm.</td>
                <td></td>
                <td>xx</td>
                <td>Stk</td>
                <td>Til skurdør</td>
            </tr>
            <tr>
                <td>Vinkelbeslag 35</td>
                <td></td>
                <td>xxx</td>
                <td>Stk</td>
                <td>Til montering af løsholter i skur</td>
            </tr>
        </table>
   <%@include file="footer.jsp" %>
    </body>
</html>
