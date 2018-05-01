package FunctionLayer;

import DBAccess.UserMapper;

import java.security.NoSuchAlgorithmException;
import DBAccess.UserMapper;
import java.security.spec.InvalidKeySpecException;
import java.sql.SQLException;
import java.util.ArrayList;


/**
 * The purpose of LogicFacade is to...
 *
 * @author kasper
 */

public class LogicFacade {

    public static User login( String email, String password ) throws LoginSampleException, NoSuchAlgorithmException, InvalidKeySpecException {
        return UserMapper.login( email, password );
    } 

//    public static User createUser(int id, String username, String phonenumber, byte[] password, String email) throws LoginSampleException, NoSuchAlgorithmException {      
//        PasswordEncryption PE = new PasswordEncryption();
//        byte[] salt = PE.genereteSalt();
//        User user = new User(id, username, username, email, password, email, salt);
//        return user;
//    }
    

    public static User createUser(String username, String phonenumber, String email, String password, int postalCode, String address) throws LoginSampleException, NoSuchAlgorithmException, InvalidKeySpecException {
        PasswordEncryption PE = new PasswordEncryption();
        byte[] salt = PE.genereteSalt();
        byte[] realPassword = PE.getEncryptedPassword(password, salt); // skal evt gives et andet navn
        User user = new User(username, phonenumber, email, realPassword, "customer", salt, postalCode, address);
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

}
