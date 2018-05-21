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
import javax.servlet.http.HttpSession;

/**
 *
 * @author kristoffer
 */
public class ChangeMaterials extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        
        
        int materialId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        int length = Integer.parseInt(request.getParameter("length"));
        int price = Integer.parseInt(request.getParameter("price"));
        int materialGroup = Integer.parseInt(request.getParameter("materialgroup"));
       
        
        try {
            LogicFacade.updateMaterials(name, desc, length, price, materialGroup);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ChangeMaterials.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
        
        
        return "changematerials";
    }
    
}
