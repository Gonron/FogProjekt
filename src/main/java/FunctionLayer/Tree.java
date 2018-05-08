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
public class Tree{
    
    private String descriptionName;
    private int length;
    private int amount;
    private String unitType;
    private String description;
    private int lengthPrUnit;
    
    
    
    public static int calculate(int treeLength, int lengthPrUnit){
     
    
    int treeAmount = Math.abs(treeLength / lengthPrUnit);
    if(treeLength % lengthPrUnit != 0){
        treeAmount +=1;
    }
    return treeAmount;
    }

    public Tree(String descriptionName, int length, int amount, String unitType, String description, int lengthPrUnit) {
        this.descriptionName = descriptionName;
        this.length = length;
        this.amount = amount;
        this.unitType = unitType;
        this.description = description;
        this.lengthPrUnit = lengthPrUnit;
    }

  

    public String getDescriptionName() {
        return descriptionName;
    }

    public void setDescriptionName(String descriptionName) {
        this.descriptionName = descriptionName;
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

    public int getLengthPrUnit() {
        return lengthPrUnit;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getUnitType() {
        return unitType;
    }

    public void setUnitType(String unitType) {
        this.unitType = unitType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

   
    
}
