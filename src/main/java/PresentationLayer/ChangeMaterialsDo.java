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
public class ChangeMaterialsDo extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        ArrayList<OrderLine> materials = DataMapper.getTreeMaterials();
        HttpSession session = request.getSession();
        session.setAttribute("materials", materials);
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        int length = Integer.parseInt(request.getParameter("length"));
        int id = Integer.parseInt(request.getParameter("id"));
        int price = Integer.parseInt(request.getParameter("price"));
        int materialGroup = Integer.parseInt(request.getParameter("materialgroup"));

        return "changeMaterials";
    }
}
