package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.PasswordEncryptionService;

import FunctionLayer.User;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
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
        

        
        PasswordEncryptionService passwordService = new PasswordEncryptionService();
        
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        
      //  her henter vi salten fra brugeren, til at validere brugeren. 
//        try {
//            byte[] salt = LogicFacade.getSalt(email, password);
//      
//
//        
//        byte[] attemptedPassword = passwordService.getEncryptedPassword(password, salt);
//        
//        if(passwordService.authenticate(password, attemptedPassword, salt)){
//  
//            
            User user = LogicFacade.login(email, password);
            
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("role", user.getRole());
            
            return user.getRole() + "page";
            
//        }else{
//            
//       
//        //Vi logger salten og det hashede password til loggeren
//        
//        }
//        
//}       catch (SQLException | NoSuchAlgorithmException | InvalidKeySpecException ex) {
//            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
//              
//            String errorMessage ="We have an internal problem, but we are working as hard as possible, to solve it.";
//             Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
//            request.setAttribute("errorMessage", errorMessage );
//            try {
//                request.getRequestDispatcher("/index.jsp").forward(request, response);
//            } catch (ServletException | IOException ex1) {
//                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex1);
//            }
//            // her bliver der kun kastet en error, hvis det er vores valideringsmetoder, der ikke virker... // tror jeg 
//        } catch (LoginSampleException ex) {
//              
//            String errorMessage ="The retrived password or username did not match, please try again.";
//             Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
//            request.setAttribute("errorMessage", errorMessage );
//            try {
//                request.getRequestDispatcher("/index.jsp").forward(request, response);
//            } catch (ServletException | IOException ex1) {
//                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex1);
//            }
//        }
//        return null;
}
}
