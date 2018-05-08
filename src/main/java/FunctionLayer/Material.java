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
public class Material {

    private int id;
    private String name;
    private int length;
    private int amount;     
    private int price;

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Material(int id, String name, int length, int amount, int price) {
        this.id = id;
        this.name = name;
        this.length = length;
        this.amount = amount;
      
        this.price = price;
    }

    public static int calculate(int materialLength, int lengthPrUnit) {

        int materialAmount = Math.abs(materialLength / lengthPrUnit);
        if (materialLength % lengthPrUnit != 0) {
            materialAmount += 1;
        }
        return materialAmount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getAmount() {
        return amount;
    }    

    public void setAmount(int amount) {
        this.amount = amount;
    }   

}
