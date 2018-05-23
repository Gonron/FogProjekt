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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logger.Conf;

/**
 *
 * @author morten
 */
public class EmpControl extends Command{
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            LogicFacade.updateOrder(id);
        } catch (ClassNotFoundException | SQLException ex) {
            Conf.MYLOGGER.log(Level.SEVERE, null, ex);
        }
        return "allOrdersEmp";
    }
}
