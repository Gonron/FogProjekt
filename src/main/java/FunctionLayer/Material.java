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
    private String descriptionName;
    private int length;
    private int amount;
    private String unitType;
    private String description;
    private int lengthPrUnit;

    public Material(int id, String descriptionName, int length, int amount, String unitType, String description, int lengthPrUnit) {
        this.id = id;
        this.descriptionName = descriptionName;
        this.length = length;
        this.amount = amount;
        this.unitType = unitType;
        this.description = description;
        this.lengthPrUnit = lengthPrUnit;
    }

    public int calculate(int materialLength, int lengthPrUnit) {

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

    public void setLengthPrUnit(int lengthPrUnit) {
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
