package FunctionLayer;

import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Morten
 */
public class Order {

    private int id;
    private int heigth;
    private int width;
    private int length;
    private boolean status;
    private static final Logger LOG = Logger.getLogger(Order.class.getName());

    public Order(int id, int heigth, int width, int length, boolean status) {
        this.id = id;
        this.heigth = heigth;
        this.width = width;
        this.length = length;
        this.status = status;
    }
    
    public Order(int heigth, int width, int length, boolean status) {        
        this.heigth = heigth;
        this.width = width;
        this.length = length;
        this.status = status;
    }

    public int getHeigth() {
        return heigth;
    }

    public void setHeigth(int heigth) {
        this.heigth = heigth;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order:" + " id=" + id + ", Heigth=" + heigth + ", Width=" + width + ", Length=" + length + ", status=" + status;
    }

}
