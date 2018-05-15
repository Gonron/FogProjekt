/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

/**
 *
 * @author morten
 */
public class OrderLine {

    private int order_id;
    private String name;
    private int length;
    private int amount;
    private String description;
    private int price;

    public OrderLine(int order_id, String name, int length, int amount, String description, int price) {
        this.order_id = order_id;
        this.name = name;
        this.length = length;
        this.amount = amount;
        this.description = description;
        this.price = price;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public static int calculatePlanks(int userLength, int length) {
        //denne metode bruges til at bregne diverse materiale, som ikke er stolper 
        //mateiralLength er bruger input
        int materialAmount = Math.abs(userLength / length);
        if (userLength % length != 0) {
            materialAmount += 1;
        }
        return materialAmount;
    }

    public static int calculatePosts(int materialLength, boolean shed) {
        int postAmount = materialLength % 2;
        if (shed == true) {
            postAmount += 4;
        }
        return postAmount;
    }

    public static int calculatePrice(OrderLine line) {
        return line.getAmount() * line.getPrice();
    }

}
