/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.LoginSampleException;
import FunctionLayer.Tree;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kristoffer
 */
public class Stykliste extends Command{

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
       //her skal der bare sættes parametre hentet fra usermapperen
        
       
        ArrayList<Tree> trees = new ArrayList<>();
        for(Tree tree: trees){
             int amount = tree.calculate(tree.getLength(), tree.getLengthPrUnit());
             ArrayList <Integer> amountMaterials = new ArrayList<>();
             amountMaterials.add(amount);
             request.setAttribute("amountMaterials", amountMaterials);
        }
      
    return null; // her skal den pågældende JSP side bare tilføjes
    }
   
}
