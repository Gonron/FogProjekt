package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Passwordtesting;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * The purpose of Login is to...
 *
 * @author kasper
 */
public class Login extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        

        
        Passwordtesting passwordt = new Passwordtesting();
        
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        try {
            byte[] salt = LogicFacade.getSalt(email, password);
      

        
        byte[] attemptedPassword = passwordt.getEncryptedPassword(password, salt);
        
        if(passwordt.authentic(password, attemptedPassword, salt)){
       
      
        User user = null;     
        
        
        user = LogicFacade.login(email, password);

        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        session.setAttribute("role", user.getRole());
   
     return user.getRole() + "page";
    
        }else{
            String message ="something went wrong";
           throw new LoginSampleException(message);
        }
        
}       catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

}
}