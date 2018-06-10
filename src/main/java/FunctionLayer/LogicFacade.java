package FunctionLayer;

import DBAccess.DataMapper;
import static FunctionLayer.Calculator.fillAmount;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;

/**
 * This logic facade is a facade between the function and presentationlayer.
 *
 * @author kasper
 */
public class LogicFacade {   

    
    //jeg ved ikke hvorfor den kaster SQL-exception her, det skal vi lige kigge på.

    public static byte[] getSalt(String email) throws LoginSampleException{
        return DataMapper.getSaltMethod(email);
    }
    
    
    public static User login(String email, String password) throws LoginSampleException{
        return DataMapper.login(email, password);
    }
//    public static User createUser(int id, String username, String phonenumber, byte[] password, String email) throws LoginSampleException, NoSuchAlgorithmException {      
//        PasswordEncryption PE = new PasswordEncryption();
//        byte[] salt = PE.genereteSalt();
//        User user = new User(id, username, username, email, password, email, salt);
//        return user;
//    }
    public static byte[] generateSalt() throws NoSuchAlgorithmException {
        PasswordEncryptionService pes = new PasswordEncryptionService();
        return pes.generateSalt(); 
    }
    
    public static byte[] getEncryptedPassword(String email) throws NoSuchAlgorithmException, InvalidKeySpecException, LoginSampleException{
      byte[] EncryptedPassword = DataMapper.getEncryptedPassword(email);
       return EncryptedPassword;
    }
    
    public static boolean authenticate(String attemptedPassword, byte[] encryptedPassword, byte[] salt) throws NoSuchAlgorithmException, InvalidKeySpecException, LoginSampleException{
        PasswordEncryptionService pes = new PasswordEncryptionService();
        return pes.authenticate(attemptedPassword, encryptedPassword, salt);
    }

    public static User createUser(String email, String password, String phonenumber, String postalCode, String address, byte[] salt) throws LoginSampleException, NoSuchAlgorithmException, InvalidKeySpecException {
        PasswordEncryptionService pes = new PasswordEncryptionService();
        byte[] encPassword = pes.getEncryptedPassword(password, salt);
        User user = new User(email, encPassword, phonenumber, postalCode, address, "employee", salt);
        DataMapper.createUser(user);
        return user;
    }

    public static Order createOrder(int height, int width, int length, boolean shed, boolean roof, User u) throws LoginSampleException {
        //Order order = new Order(length, width, length, shed, roof, false);
        Order order = new Order(210, width, length, shed, false, false);
        ArrayList<OrderLine> orderlines = fillAmount(order.getLength(), order.getWidth(), shed);
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
        boolean shed = o.getShed();
        return Calculator.fillAmount(userWidth, userLength, shed);
    }

    public static Order getOrder(int orderId) throws LoginSampleException {
        return DataMapper.getOrder(orderId);
    }

    public static void updateMaterials(String name, String desc, int length, int price, int materialGroup, int id) throws LoginSampleException {
        DataMapper.updateMaterials(name, desc, length, price, materialGroup, id);
    }

    public static boolean validateUser(String email, String password) throws LoginSampleException{
        return DataMapper.validateUser(email, password);
        
    }
    public static User showUser(int id) throws LoginSampleException{        
        User user = DataMapper.showUser(id);
        return user;
    }
}
