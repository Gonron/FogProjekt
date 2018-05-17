package DBAccess;

import FunctionLayer.Calculator;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Order;
import FunctionLayer.OrderLine;
import FunctionLayer.User;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * The purpose of DataMapper is to...
 *
 * @author kasper
 */
public class DataMapper {

    public static void createUser(User user) throws LoginSampleException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO Users (email, password, phone, post, adress, role) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getPhonenumber());
            ps.setString(4, user.getPostalCode());
            ps.setString(5, user.getAddress());
            ps.setString(6, user.getRole());
            ps.executeUpdate();
            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            user.setId(id);
        } catch (SQLException | ClassNotFoundException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static User login(String email, String password) throws LoginSampleException, NoSuchAlgorithmException, InvalidKeySpecException {

        // denne metode skal rettes så ledes, at vi tager et salt objekt udfra databasen og kan bruge det til at verificere brugeren
        try {

            Connection con = Connector.connection();
            String SQL = "SELECT id, phone, post, adress, role FROM Users "
                    + "WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String role = rs.getString("role");
                int id = rs.getInt("id");
                String phonenumber = rs.getString("phone");
                String postalCode = rs.getString("post");
                String address = rs.getString("adress");
                User user = new User(id, email, password, phonenumber, postalCode, address, role);
                user.setId(id);
                return user;
            } else {
                throw new LoginSampleException("Could not validate user");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            throw new LoginSampleException(ex.getMessage());
        }
    }

    public static ArrayList<Order> getOrders() throws ClassNotFoundException, SQLException {
        ArrayList<Order> orders = new ArrayList();
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM orders ORDER BY order_id DESC";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("order_id");
            int SBricks = rs.getInt("Heigth");
            int MBricks = rs.getInt("Width");
            int LBricks = rs.getInt("Length");
            boolean status = rs.getBoolean("status");
            Order order = new Order(id, SBricks, MBricks, LBricks, status);
            orders.add(order);
        }
        return orders;
    }

    public static void createOrder(Order order, User user) throws SQLException, ClassNotFoundException {

        Connection con = Connector.connection();
        String SQL = "INSERT INTO orders (id, Heigth, Width, Length, status) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
        ps.setInt(1, user.getId());
        ps.setInt(2, order.getHeigth());
        ps.setInt(3, order.getWidth());
        ps.setInt(4, order.getLength());
        ps.setBoolean(5, order.getStatus());
        ps.executeUpdate();
        ResultSet ids = ps.getGeneratedKeys();
        ids.next();
        int id = ids.getInt(1);
        order.setId(id);
    }

    public static ArrayList<Order> getOrders(User u) throws ClassNotFoundException, SQLException {
        int id = u.getId();
        ArrayList<Order> orders = new ArrayList();
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM orders " + "WHERE id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int orderId = rs.getInt("order_id");
            int heigth = rs.getInt("Heigth");
            int width = rs.getInt("Width");
            int length = rs.getInt("Length");
            boolean status = rs.getBoolean("status");
            Order order = new Order(orderId, heigth, width, length, status);
            orders.add(order);
        }
        return orders;
    }

    public static void updateOrder(int id) throws ClassNotFoundException, SQLException {
        Connection con = Connector.connection();
        String SQL = "update orders set status = ? where order_id = ?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setBoolean(1, true);
        ps.setInt(2, id);
        ps.executeUpdate();
    }

    public static ArrayList<OrderLine> getTreeMaterials() throws ClassNotFoundException, SQLException {
        ArrayList<OrderLine> materials = new ArrayList();
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM materials";
        PreparedStatement ps = con.prepareStatement(SQL);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("material_id");
            String name = rs.getString("name");
            String description = rs.getString("desc");
            int length = rs.getInt("length");
            int price = rs.getInt("price");
            int group = rs.getInt("material_group");
            OrderLine l = new OrderLine(id, name, length, 0, description, price, group);
            materials.add(l);
        }
        return materials;
    }

    public static ArrayList<OrderLine> fillAmount(int userWidth, int userLength, boolean shed) throws ClassNotFoundException, SQLException {
        //denne metode tager udgangspunk i en carport med flattag

        Calculator calc = new Calculator();

        ArrayList<OrderLine> orderlines = DataMapper.getTreeMaterials();
        for (int i = 0; i < orderlines.size(); i++) {
            int group = orderlines.get(i).getMaterialgroup();
            switch (group) {
                case 1:
                    orderlines.get(i).setAmount(calc.calculatePlanks(userLength, orderlines.get(i).getLength()));
                    break;
                case 2:
                    orderlines.get(i).setAmount(calc.calculatePosts(userLength, userWidth, shed));
                    break;
                default:
                    orderlines.get(i).setAmount(1);
                    break;
            }
            orderlines.get(i).setPrice(calc.calculatePrice(orderlines.get(i)));
        }//      

        return orderlines;
    }

    public static Order getOrder(int id) throws ClassNotFoundException, SQLException {
        Connection con = Connector.connection();
        String SQL = "SELECT * FROM orders " + "WHERE order_id=?";
        PreparedStatement ps = con.prepareStatement(SQL);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        int orderId = rs.getInt("order_id");
        int heigth = rs.getInt("Heigth");
        int width = rs.getInt("Width");
        int length = rs.getInt("Length");
        boolean status = rs.getBoolean("status");
        Order order = new Order(orderId, heigth, width, length, status);
        return order;
    }
}
