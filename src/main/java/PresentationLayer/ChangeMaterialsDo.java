/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kristoffer
 */
public class ChangeMaterialsDo extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        int length = Integer.parseInt(request.getParameter("length"));
        int id = Integer.parseInt(request.getParameter("id"));
        int price = Integer.parseInt(request.getParameter("price"));
        int materialGroup = Integer.parseInt(request.getParameter("materialgroup"));
        LogicFacade.updateMaterials(name, desc, length, price, materialGroup, id);
        return "changeMaterials";
    }
}
