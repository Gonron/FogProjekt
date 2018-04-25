package FunctionLayer;

import DBAccess.UserMapper;
import java.security.NoSuchAlgorithmException;

/**
 * The purpose of LogicFacade is to...
 * @author kasper
 */
public class LogicFacade {

   
    
    
    public static User login( String email, String password ) throws LoginSampleException, NoSuchAlgorithmException {
        return UserMapper.login( email, password);
    } 

    public static User createUser(int id, String username, String phonenumber, byte[] password, String email) throws LoginSampleException, NoSuchAlgorithmException {      
        PasswordEncryption PE = new PasswordEncryption();
        byte[] salt = PE.genereteSalt();
        User user = new User(id, username, username, email, password, email, salt);
        UserMapper.createUser(user);
        return user;
    }

}
