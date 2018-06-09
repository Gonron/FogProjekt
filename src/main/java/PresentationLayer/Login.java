package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import FunctionLayer.PasswordEncryptionService;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // her henter vi salten fra brugeren, til at validere brugeren. 
        try {
            byte[] salt = LogicFacade.getSalt(email);

            byte[] attemptedPassword = LogicFacade.getEncryptedPassword(email);

            if (LogicFacade.authenticate(password, attemptedPassword, salt)) {

                User user = null;
                user = LogicFacade.login(email, password);

                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setAttribute("role", user.getRole());

                return user.getRole() + "page";

            } else {
                String errorMessage = "the username or password you have selected does not exist";
                throw new LoginSampleException(errorMessage);

            }

        } catch (NoSuchAlgorithmException | InvalidKeySpecException ex) {
            String errorMessage = "We have an internal problem, but we are working as hard as possible, to solve it.";
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            throw new LoginSampleException(errorMessage);
        } catch (NullPointerException ex) {
            String errorMessage = "the username or password you have selected does not exist";
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            throw new LoginSampleException(errorMessage);
        }
    }
}
