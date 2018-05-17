/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

/**
 *
 * @author kristoffer
 */
public class Calculator {
    
    
    
     
    public int calculatePlanks(int userLength, int lengthPrUnit) {
        //denne metode bruges til at bregne diverse materiale, som ikke er stolper 
        //mateiralLength er bruger input
        int materialAmount = Math.abs(userLength / lengthPrUnit);
        if (userLength % lengthPrUnit != 0) {
            materialAmount += 1;
        }
        return materialAmount;
    }
    
    
    public int calculatePosts(int userLength, int userwidth, boolean shed){
        int postAmount = (userLength / 200)*(userwidth/500);        
        if(shed == true){
            postAmount +=4;
        }
        return postAmount;
    }
    
    public int calculatePrice(OrderLine line){
       return line.getAmount() * line.getPrice();
   } 
}
