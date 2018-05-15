/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author morten
 */
public class EmpControl extends Command{
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            LogicFacade.updateOrder(id);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(EmpControl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "allOrdersEmp";
    }
}
