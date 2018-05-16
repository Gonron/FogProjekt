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
import java.sql.SQLException;
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
        int height = Integer.parseInt(request.getParameter("height"));
        int width = Integer.parseInt(request.getParameter("width"));
        int length = Integer.parseInt(request.getParameter("length"));
        boolean shed = Boolean.parseBoolean(request.getParameter("shed"));
        boolean roof = Boolean.parseBoolean(request.getParameter("roof"));
        
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user"); 
        try {
            LogicFacade.createOrder(height, width, length, shed, roof, u); //TODO: Vi skal ikke hardcode shed og roof til false 
        } catch (SQLException ex) {
            Logger.getLogger(OrderPage.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(OrderPage.class.getName()).log(Level.SEVERE, null, ex);
        }
        Order o= new Order(5, 7, 8, false, false, false);
        try {
            System.out.println("TESTTESTTESTTESTTESTTESTTESTTESTTEST231212");
            System.out.println(LogicFacade.createList(o));
            System.out.println("TESTTESTTESTTESTTESTTESTTESTTESTTEST");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Receipt.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Receipt.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "receipt";
    }
}
