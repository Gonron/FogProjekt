package FunctionLayer;

import DBAccess.DataMapper;
import static FunctionLayer.Calculator.fillAmount;
import java.util.ArrayList;

/**
 * This logic facade is a facade between the function and presentationlayer.
 *
 * @author kasper
 */
public class LogicFacade {

    public static User login(String email, String password) throws LoginSampleException{
        return DataMapper.login(email, password);
    }
//    public static User createUser(int id, String username, String phonenumber, byte[] password, String email) throws LoginSampleException, NoSuchAlgorithmException {      
//        PasswordEncryption PE = new PasswordEncryption();
//        byte[] salt = PE.genereteSalt();
//        User user = new User(id, username, username, email, password, email, salt);
//        return user;
//    }

    public static User createUser(String email, String password, String phonenumber, String postalCode, String address) throws LoginSampleException {

        User user = new User(email, password, phonenumber, postalCode, address, "customer");
        DataMapper.createUser(user);
        return user;
    }

    public static Order createOrder(int height, int width, int length, boolean shed, boolean roof, User u) throws LoginSampleException {
        //Order order = new Order(length, width, length, shed, roof, false);
        Order order = new Order(210, width, length, shed, false, false);
        ArrayList<OrderLine> orderlines = fillAmount(order.getLength(), order.getWidth(), false);
        DataMapper.createOrder(order, u, orderlines);
        return order;
    }

    public static ArrayList<Order> getOrders() throws LoginSampleException {
        return DataMapper.getOrders();
    }

    public static ArrayList<Order> getOrders(User u) throws LoginSampleException {
        return DataMapper.getOrders(u);
    }

    public static void updateOrder(int id) throws LoginSampleException {
        DataMapper.updateOrder(id);
    }

    public static ArrayList<OrderLine> createList(Order o) throws LoginSampleException {
        double userWidth = o.getWidth();
        double userLength = o.getLength();
        boolean shed = false;
        return Calculator.fillAmount(userWidth, userLength, shed);
    }

    public static Order getOrder(int orderId) throws LoginSampleException {
        return DataMapper.getOrder(orderId);
    }

    public static void updateMaterials(String name, String desc, int length, int price, int materialGroup, int id) throws LoginSampleException {
        DataMapper.updateMaterials(name, desc, length, price, materialGroup, id);
    }

}
