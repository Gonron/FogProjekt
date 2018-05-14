<%-- 
    Document   : stykliste
    Created on : 14-05-2018, 09:23:50
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main.css" />

        <title>JSP Page</title>
        <style>
            table, td, th {
                background: white;
                border: 1px solid black;
                padding-left:  5px;
                padding-right:  5px;
            }

            table {
                border-collapse: collapse;
                width: 54%;
            }

            td {
                vertical-align: bottom;
            }
        </style>
    </head>
    <body>
        <h1>Stykliste</h1>

        <table>
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

    </body>
</html>
