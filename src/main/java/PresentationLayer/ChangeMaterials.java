/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import DBAccess.DataMapper;
import FunctionLayer.LoginSampleException;
import FunctionLayer.OrderLine;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Morten
 */
public class ChangeMaterials extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        ArrayList<OrderLine> materials = DataMapper.getTreeMaterials();
        HttpSession session = request.getSession();
        session.setAttribute("materials", materials);
        
        return "changeMaterials";

    }
}
