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

public class OrderLine{

    private int materialId;
    private String name;
    private int length;
    private int amount;
    private String description;
    private int price;
    private int materialgroup;

    public OrderLine(int materialId, String name, int length, int amount, String description, int price, int materialgroup) {
        this.materialId = materialId;
        this.name = name;
        this.length = length;
        this.amount = amount;
        this.description = description;
        this.price = price;
        this.materialgroup = materialgroup;
    }
  
    public int getMaterialId() {
        return materialId;
    }

    public void setMaterialId(int materialId) {
        this.materialId = materialId;
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

    public int getMaterialgroup() {
        return materialgroup;
    }

    public void setMaterialgroup(int materialgroup) {
        this.materialgroup = materialgroup;
    }

    @Override
    public String toString() {
        return name + "" + length + "" + amount + "" + description;
    }

}
