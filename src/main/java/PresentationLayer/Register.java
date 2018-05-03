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

        String username = request.getParameter("username");
        int phonenumber = Integer.parseInt(request.getParameter("phonenumber"));
        int postalCode = Integer.parseInt(request.getParameter("postalcode"));
        String address = request.getParameter("address");
 

        String password1 = request.getParameter("password1");
        String password2 = request.getParameter("password2");
        if (password1.equals(password2)) {
            User user = LogicFacade.createUser(phonenumber, email, password2, postalCode, address);
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("role", user.getRole());
            return user.getRole() + "page";
        } else {
            throw new LoginSampleException("the two passwords did not match");
        }
    }

}
