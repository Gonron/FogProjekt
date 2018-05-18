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
    
    
     


    public int calculatePlanks(double userLength, double lengthPrUnit) {
        //denne metode bruges til at bregne diverse materiale, som ikke er stolper 
        //mateiralLength er bruger input
        double materialAmount = Math.abs(userLength / lengthPrUnit);
        if (userLength % lengthPrUnit != 0) {
            materialAmount += 1;
        }
        return (int) (materialAmount*2);
    }
    
    
            
    public int calculatePosts(double userLength, double userwidth, boolean shed){
        double postAmount = (userLength / 200)*(userwidth/500);        
        if(shed == true){
            postAmount +=4;
        }
        return (int) Math.round(postAmount);
    }
    
    public int calculatePrice(OrderLine line){
       return line.getAmount() * line.getPrice();
   } 
}
