package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.PasswordEncryption;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends Command {

    PasswordEncryption PE = new PasswordEncryption();

    @Override   
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        int postalCode = Integer.parseInt(request.getParameter("postalcode"));
        String address = request.getParameter("address");

        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        if (password1.equals(password2)) {

//            byte[] salt = null;
//            try {
//                salt = PE.genereteSalt();
//            } catch (NoSuchAlgorithmException ex) {
//                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
//            }
//            byte[] password = null;
//            try {
//                password = PE.getEncryptedPassword(password1, salt);
//            } catch (NoSuchAlgorithmException | InvalidKeySpecException ex) {
//                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
//            }
            User user = LogicFacade.createUser(phonenumber, email, password2, postalCode, address);
//            try {
//                user = LogicFacade.createUser(username, phonenumber, email, password2, postalCode, address);
//            } catch (NoSuchAlgorithmException | InvalidKeySpecException ex) {
//                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
//            }
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("role", user.getRole());
            return user.getRole() + "page";
        } else {
            throw new LoginSampleException("the two passwords did not match");
        }
    }

}
