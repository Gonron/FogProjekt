package FunctionLayer;

import java.security.NoSuchAlgorithmException;
import DBAccess.DataMapper;
import java.security.spec.InvalidKeySpecException;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * The purpose of LogicFacade is to...
 *
 * @author kasper
 */
public class LogicFacade {

    public static User login(String email, String password) throws LoginSampleException, NoSuchAlgorithmException, InvalidKeySpecException {
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

    public static Order createOrder(int height, int width, int length, boolean shed, boolean roof, User u) throws SQLException, ClassNotFoundException {

        //Order order = new Order(length, width, length, shed, roof, false);

        Order order = new Order(height, width, length, false, false, false);
        DataMapper.createOrder(order, u);
        return order;
    }

    public static ArrayList<Order> getOrders() throws ClassNotFoundException, SQLException {
        return DataMapper.getOrders();
    }

    public static ArrayList<Order> getOrders(User u) throws ClassNotFoundException, SQLException {
        return DataMapper.getOrders(u);
    }

    public static void updateOrder(int id) throws ClassNotFoundException, SQLException {
        DataMapper.updateOrder(id);
    }
    
    public static ArrayList<OrderLine> createList(Order o) throws ClassNotFoundException, SQLException{
        int userWidth = o.getWidth();
        int userLength = o.getLength();
        boolean shed = false;
        return DataMapper.fillAmount(userWidth, userLength, shed);
    }
}
