/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import DBAccess.DataMapper;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * This is all of our calculators
 * @author kristoffer
 */
public class Calculator {
    
    
     

/**
 * this method calculates the number of planks used in the order
 * @param userLength
 * @param lengthPrUnit
 * @return The method returns the number of planks needed to make the carport
 */
    public int calculatePlanks(double userLength, double lengthPrUnit) {
        //denne metode bruges til at bregne diverse materiale, som ikke er stolper 
        //mateiralLength er bruger input
        double materialAmount = Math.abs(userLength / lengthPrUnit);
        if (userLength % lengthPrUnit != 0) {
            materialAmount += 1;
        }
        return (int) (materialAmount*2);
    }    
    
    
    /**
     * This method calculates the number of posts needed to make the order
     * @param userLength
     * @param userwidth
     * @param shed
     * @return The method returns the number of posts needed to make the carport
     */        
    public int calculatePosts(double userLength, double userwidth, boolean shed){
        double postAmount = (userLength / 200)*(userwidth/500);        
        if(shed == true){
            postAmount +=4;
        }
        if(postAmount%2!=0){
            postAmount+=1;
        }
        return (int) Math.round(postAmount);
    }
    
    /**
     * This method calculates the price of an orderline
     * @param line
     * @return The method returns the total price of an orderline 
     */
    public int calculatePrice(OrderLine line){
       return line.getAmount() * line.getPrice();
   }
    /**
     * This method set the amount of materials used to the appropiate amount and calculates the price
     * @param userWidth
     * @param userLength
     * @param shed
     * @return The method calls a calculator that calculates amount and price of materials in the order
     * @throws ClassNotFoundException
     * @throws SQLException 
     */
    public static ArrayList<OrderLine> fillAmount(double userWidth, double userLength, boolean shed) throws LoginSampleException 
    {
        //denne metode tager udgangspunk i en carport med flat tag
        Calculator calc = new Calculator();
        ArrayList<OrderLine> orderlines = DataMapper.getTreeMaterials();
        for (int i = 0; i < orderlines.size(); i++) {
            int group = orderlines.get(i).getMaterialgroup();
            switch (group) {
                case 1:
                    orderlines.get(i).setAmount(calc.calculatePlanks(userLength, orderlines.get(i).getLength()));
                    break;
                case 2:
                    orderlines.get(i).setAmount(calc.calculatePosts(userLength, userWidth, shed));
                    break;
                case 4:
                    orderlines.get(i).setAmount(calc.calculatePlanks(userWidth, orderlines.get(i).getLength()));
                    break;
                default:
                    orderlines.get(i).setAmount(1);
                    break;
            }
            orderlines.get(i).setPrice(calc.calculatePrice(orderlines.get(i)));
        }
        return orderlines;
    }
}
