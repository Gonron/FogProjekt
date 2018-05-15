/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import DBAccess.DataMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.User;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class CreateOrder extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
       
      
            //denne servlet er en test til at teste hvordan styklisten kommer til at fungere
            int length = Integer.parseInt(request.getParameter("length"));
            int width =Integer.parseInt(request.getParameter("width"));
            int height = Integer.parseInt(request.getParameter("height"));
            boolean shed =  Boolean.parseBoolean(request.getParameter("shed"));
            boolean roof = Boolean.parseBoolean(request.getParameter("roof"));
            
            
            Order order = new Order(length, height, width, shed, roof, false);
            
            User user =(User)request.getAttribute("user");
            
            
        try {
            DataMapper.createOrder(order, user);
        } catch (SQLException ex) {
            Logger.getLogger(CreateOrder.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CreateOrder.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        //nedenfor, skal der blot retuneres den pågældende   
        //LogicFacade ting
        
        return null;
    
    }
}
