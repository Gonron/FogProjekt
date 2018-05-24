/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.LoginSampleException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Morten
 */
public class CreateOrder extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

//        int length = Integer.parseInt(request.getParameter("length"));
//        int width = Integer.parseInt(request.getParameter("width"));        
//        Order o = new Order(0, 210, width, length, true);
//        HttpSession session = request.getSession();
//        session.setAttribute( "order", o );
        return "createorder";
    }
}
