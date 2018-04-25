package FunctionLayer;

import DBAccess.UserMapper;
<<<<<<< HEAD
import java.security.NoSuchAlgorithmException;
=======
import javax.servlet.http.HttpSession;
import DBAccess.UserMapper;
import java.sql.SQLException;
import java.util.ArrayList;
>>>>>>> 3af9ffc39eeb2e8bc711243d80b5e8c0d842a910

/**
 * The purpose of LogicFacade is to...
 *
 * @author kasper
 */
public class LogicFacade {

<<<<<<< HEAD
   
    
    
    public static User login( String email, String password ) throws LoginSampleException, NoSuchAlgorithmException {
        return UserMapper.login( email, password);
    } 

    public static User createUser(int id, String username, String phonenumber, byte[] password, String email) throws LoginSampleException, NoSuchAlgorithmException {      
        PasswordEncryption PE = new PasswordEncryption();
        byte[] salt = PE.genereteSalt();
        User user = new User(id, username, username, email, password, email, salt);
=======
    public static User login(String email, String password) throws LoginSampleException {
        return UserMapper.login(email, password);
    }

    public static User createUser(String email, String password) throws LoginSampleException {
        User user = new User(email, password, "customer");
>>>>>>> 3af9ffc39eeb2e8bc711243d80b5e8c0d842a910
        UserMapper.createUser(user);
        return user;
    }

    public static Order createOrder(int lBricks, int mBricks, int sBricks, User u) throws SQLException, ClassNotFoundException {
        Order order = new Order(sBricks, mBricks, lBricks, false);
        UserMapper.createOrder(order, u);
        return order;
    }

    public static ArrayList<Order> getOrders() throws ClassNotFoundException, SQLException {
        return UserMapper.getOrders();
    }

//    public static ArrayList<Order> getOrders(User u) throws ClassNotFoundException, SQLException {
//        return UserMapper.getOrders(u);
//    }
//
//    public static void updateOrder(int id) throws ClassNotFoundException, SQLException {
//        UserMapper.updateOrder(id);
//    }
}
