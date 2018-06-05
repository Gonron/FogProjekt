package PresentationLayer;

import FunctionLayer.LogicFacade;
import FunctionLayer.LoginSampleException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Johachim
 */
public class DynamicCarport extends Command {

    public DynamicCarport() {

    }

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException {
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("idt"));
        session.setAttribute("order", LogicFacade.getOrder(id));
        System.out.println(LogicFacade.getOrder(id));
        return "DynamicCarport";
    }
    }
    

