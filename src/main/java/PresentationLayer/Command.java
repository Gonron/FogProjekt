package PresentationLayer;

import FunctionLayer.LoginSampleException;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

abstract class Command {

    private static HashMap<String, Command> commands;

    private static void initCommands() {
        commands = new HashMap<>();
        commands.put("materialListOrder", new MaterialListOrder());
        commands.put("login", new Login());
        commands.put("register", new Register());
        commands.put("allOrdersEmp", new AllOrdersEmp());
        commands.put("allOrdersCust", new AllOrdersCust());
        commands.put("contact", new Contact());
        commands.put("createorder", new CreateOrder());
        commands.put("confirmOrder", new ConfirmOrder());
        commands.put("receipt", new Receipt());
        commands.put("order", new OrderPage());
        commands.put("EmpControl", new EmpControl());
        commands.put("stykliste", new Stykliste());
        commands.put("changematerialsdo", new ChangeMaterialsDo());
        commands.put("changematerials", new ChangeMaterials());
        commands.put("DynamicCarport", new DynamicCarport());
        commands.put("DynamicCarportSide", new DynamicCarportSide());
        commands.put("pickus", new PickUsSide());
        commands.put("about", new AboutUs());
        commands.put("employees", new EmployeePage());
        commands.put("showUser", new ShowUser());
    }

    static Command from(HttpServletRequest request) {
        String commandName = request.getParameter("command");
        if (commands == null) {
            initCommands();
        }
        return commands.getOrDefault(commandName, new UnknownCommand());
    }

    abstract String execute(HttpServletRequest request, HttpServletResponse response)
            throws LoginSampleException;

}
