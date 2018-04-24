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
    private int Heigth;
    private int Width;
    private int Length;
    private boolean status;
    private static final Logger LOG = Logger.getLogger(Order.class.getName());

    public Order(int id, int Heigth, int Width, int Length, boolean status) {
        this.id = id;
        this.Heigth = Heigth;
        this.Width = Width;
        this.Length = Length;
        this.status = status;
    }
    
    public Order(int Heigth, int Width, int Length, boolean status) {        
        this.Heigth = Heigth;
        this.Width = Width;
        this.Length = Length;
        this.status = status;
    }

    public int getHeigth() {
        return Heigth;
    }

    public void setHeigth(int Heigth) {
        this.Heigth = Heigth;
    }

    public int getWidth() {
        return Width;
    }

    public void setWidth(int Width) {
        this.Width = Width;
    }

    public int getLength() {
        return Length;
    }

    public void setLength(int Length) {
        this.Length = Length;
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
        return "Order:" + " id=" + id + ", Heigth=" + Heigth + ", Width=" + Width + ", Length=" + Length + ", status=" + status;
    }

}
