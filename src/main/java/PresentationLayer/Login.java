package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.PasswordEncryption;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 The purpose of Login is to...

 @author kasper
 */
public class Login extends Command {
    

    @Override
    String execute( HttpServletRequest request, HttpServletResponse response ) throws LoginSampleException {
        PasswordEncryption PE = new PasswordEncryption();
        
        String email = request.getParameter( "email" );
        String password = request.getParameter( "password" );
       
        User user = null;
        user = LogicFacade.login(email, password);
        HttpSession session = request.getSession();
        session.setAttribute( "user", user );
        session.setAttribute( "role", user.getRole() );
        return user.getRole() + "page";
    }

}
