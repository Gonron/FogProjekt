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
   
    private int materialId;
    private int length;
    private int amount;
    private String description;
    private int price;
    private int materialgroup;

    public OrderLine(int material_id, int length, int amount, String description, int price, int materialgroup) {
        this.materialId = material_id;
        this.length = length;
        this.amount = amount;
        this.description = description;
        this.price = price;
        this.materialgroup = materialgroup;
    }

    public int getMaterial_id() {
        return materialId;
    }

    public void setMaterial_id(int material_id) {
        this.materialId = material_id;
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
        return "OrderLine{" + "materialId=" + materialId + ", length=" + length + ", amount=" + amount + ", description=" + description + ", price=" + price + ", materialgroup=" + materialgroup + '}';
    }
  
    
    
}
