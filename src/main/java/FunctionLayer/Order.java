package FunctionLayer;


public class Order {

    private int id;
    private int heigth;
    private int width;
    private int length;
    private boolean shed;
    private boolean flatRoof;
    private boolean status;


    public Order(int id, int heigth, int width, int length, boolean status) {
        this.id = id;
        this.heigth = heigth;
        this.width = width;
        this.length = length;
        this.status = status;
    }
    
    public Order(int heigth, int width, int length, boolean shed, boolean status) {        
        this.heigth = heigth;
        this.width = width;
        this.length = length;
        this.shed = shed;
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
        return "Order:" + " id=" + id + ", Heigth=" + heigth + ", Width=" + width + ", Length=" + length + ", sent=" + status;
    }
    
    public static int calculatePlanks(int userLength, int lengthPrUnit) {
        //denne metode bruges til at bregne diverse materiale, som ikke er stolper 
        //mateiralLength er bruger input
        int materialAmount = Math.abs(userLength / lengthPrUnit);
        if (userLength % lengthPrUnit != 0) {
            materialAmount += 1;
        }
        return materialAmount;
    }
    
    
    public static int calculatePosts(int materialLength, boolean shed){
        int postAmount = materialLength % 2;
        if(shed == true){
            postAmount +=4;
        }
        return postAmount;
    }
    

   public static int calculatePrice(OrderLine line){
       return line.getAmount() * line.getPrice();
   } 
    
}
