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
 * @author User
 */
public class CreateOrder extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
       
        //denne servlet er en test til at teste hvordan styklisten kommer til at fungere       
        String length =request.getParameter("length");
        String width =request.getParameter("width");
        String height =request.getParameter("height");
        return "createorder";
    }
}
