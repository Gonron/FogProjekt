package FunctionLayer;


public class Order {

    private int id;
    private double heigth;
    private double width;
    private double length;
    private boolean shed;
    private boolean flatRoof;
    private boolean status;


    public Order(int id, double heigth, double width, double length, boolean status) {
        this.id = id;
        this.heigth = heigth;
        this.width = width;
        this.length = length;
        this.status = status;
    }

    
    public Order(double heigth, double width, double length, boolean shed, boolean flatRoof, boolean status) {        
        this.heigth = heigth;
        this.width = width;
        this.length = length;
        this.shed = shed;
        this.flatRoof = flatRoof;
        this.status = status;
       
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getHeigth() {
        return heigth;
    }

    public void setHeigth(double heigth) {
        this.heigth = heigth;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getLength() {
        return length;
    }

    public void setLength(double length) {
        this.length = length;
    }

    public boolean getShed() {
        return shed;
    }

    public void setShed(boolean shed) {
        this.shed = shed;
    }

    public boolean getFlatRoof() {
        return flatRoof;
    }

    public void setFlatRoof(boolean flatRoof) {
        this.flatRoof = flatRoof;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order:" + "id=" + id + ", bredde=" + width + ", længde=" + length + ", sendt=" + status;
    }     

    
}
