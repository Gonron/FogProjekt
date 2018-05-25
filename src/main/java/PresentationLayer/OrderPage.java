/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author morten
 */
public class OrderPage extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
//        if(session.getAttribute("user") == null){
//            try {
//                response.sendRedirect("index.jsp");
//            } catch (IOException ex) {
//                Logger.getLogger(OrderPage.class.getName()).log(Level.SEVERE, null, ex);
//            }
//////        }
        
        int width = Integer.parseInt(request.getParameter("width"));
        int length = Integer.parseInt(request.getParameter("length"));
        boolean shed = false;
        if (request.getParameter("shed").equals("medskur")) {
            shed = true;
        } 
        boolean roof = Boolean.parseBoolean(request.getParameter("roof"));
        User u = (User) session.getAttribute("user");
        LogicFacade.createOrder(210, width, length, shed, roof, u); //TODO: Vi skal ikke hardcode shed og roof til false
        Order o = new Order(length, width, length, shed, roof, shed);
        System.out.println(o);
        session.setAttribute("order", o);
        return "receipt";
    }
}
