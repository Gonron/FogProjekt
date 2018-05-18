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
        int width = Integer.parseInt(request.getParameter("width"));
        int length = Integer.parseInt(request.getParameter("length"));
        boolean shed=false; //= Boolean.parseBoolean(request.getParameter("shed"));
        boolean roof = Boolean.parseBoolean(request.getParameter("roof"));
        if(request.getParameter("shed").equals("medskur")){
            shed=true;
        }
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user"); 
        try {
            LogicFacade.createOrder(210, width, length, shed, roof, u); //TODO: Vi skal ikke hardcode shed og roof til false 
        } catch (SQLException ex) {
            Logger.getLogger(OrderPage.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(OrderPage.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return "receipt";
    }
}
