/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import DBAccess.DataMapper;
import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.OrderLine;
import java.sql.SQLException;
import java.util.ArrayList;
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
        
        
        try {
            
            
            ArrayList<OrderLine> materials;
            materials = DataMapper.getTreeMaterials();
            HttpSession session = request.getSession();
            session.setAttribute("materials", materials);
            
            
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ChangeMaterials.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ChangeMaterials.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
