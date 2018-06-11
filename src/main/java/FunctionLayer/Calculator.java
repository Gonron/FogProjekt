/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import DBAccess.DataMapper;
import java.util.ArrayList;

/**
 * This is all of our calculators
 *
 * @author kristoffer
 */
public class Calculator {

    /**
     * this method calculates the number of planks used in the order
     *
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
        return (int) (materialAmount * 2);
    }

    /**
     * This method calculates the number of posts needed to make the order
     *
     * @param userLength
     * @param userwidth
     * @param shed
     * @return The method returns the number of posts needed to make the carport
     */
    public int calculatePosts(double userLength, double userwidth, boolean shed) {
        double postAmount = (userLength / 200) * (userwidth / 500);
        if (shed == true) {
            postAmount += 4;
        }
        if (postAmount < 4) {
            postAmount = 4;
        }
        if (Math.round(postAmount) % 2 != 0) {
            postAmount += 1;
        }
        return (int) Math.round(postAmount);
    }

    /**
     * This method calculates the price of an orderline
     *
     * @param line
     * @return The method returns the total price of an orderline
     */
    public int calculatePrice(OrderLine line) {
        return line.getAmount() * line.getPrice();
    }

    public int calculateRafter(double userLength, double userwidth) {
        double rafter = (userLength / 100) * (userwidth / 361);
        return (int) Math.round(rafter);
    }

    public int calculateNails(double userLength, double userwidth) {
        double nails = (userLength / 200) * (userwidth / 500);
        return (int) Math.round(nails);
    }

    public int calculateBrackets(double userLength, double lengthPrUnit) {
        int planks = calculatePlanks(userLength, lengthPrUnit);
        double brackets = planks * 10;
        return (int) Math.round(brackets);
    }

    public int calculateShedplanks(double userWidth, boolean shed) {
        double shedPlanks = 0;
        if (shed) {
            shedPlanks = userWidth * 0.33 + 200;
        }
        return (int) Math.round(shedPlanks);
    }

    /**
     * This method set the amount of materials used to the appropiate amount and calculates the price
     *
     * @param userWidth
     * @param userLength
     * @param shed
     * @return The method calls a calculator that calculates amount and price of materials in the order
     * @throws FunctionLayer.LoginSampleException
     */
    public static ArrayList<OrderLine> fillAmount(double userWidth, double userLength, boolean shed) throws LoginSampleException {
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
                case 5:
                    orderlines.get(i).setAmount(calc.calculateRafter(userLength, userWidth));
                    break;
                case 6:
                    orderlines.get(i).setAmount(calc.calculateNails(userLength, userWidth));
                    break;
                case 7:
                    orderlines.get(i).setAmount(calc.calculateBrackets(userLength, orderlines.get(0).getLength()));
                    break;
                case 8:
                    orderlines.get(i).setAmount(calc.calculateShedplanks(userWidth, shed));
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
